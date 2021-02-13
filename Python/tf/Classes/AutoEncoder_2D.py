import os

os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3'
import tensorflow as tf
import tensorflow_addons as tfa
import tensorflow_probability as tfp
import numpy as np

from shared_functions import ActivationLayerFactory, DropoutLayerFactory, BatchNormalizationLayerFactory


#############################################
## IT'S CURRENTLY A MESS IN HERE!!!!!!!!!!!
#################################################

# Channels 3, 4, 5, 6, 13, and 14
# Finds reconstruction loss... should help us find out if something is similar to FOCUSING or NOT FOCUSING...
class AutoEncoder_2D(tf.keras.Model):

    def __init__(self, in_shape=(6,), out_shape=None, latent_shape=(2,), hidden_layer_count=3, density_multiplier=2, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.in_shape = in_shape
        self.out_shape = out_shape
        self.latent_shape = latent_shape
        self.hidden_layer_count = hidden_layer_count
        self.model: tf.keras.Model = tf.keras.Model()
        self.density_multiplier = density_multiplier

        self.loss_function = tf.keras.losses.MAE

        self.encoder = self.prepare_encoder()
        self.decoder = self.prepare_decoder()

        self.lr_schedule = tfa.optimizers.ExponentialCyclicalLearningRate(1e-4, 1e-2, step_size=2000, gamma=0.96)

        self.optimizer = tfa.optimizers.LAMB
        self.activations = tfa.activations.lisht
        self.output_activation = self.activations

        self.encoder_output_activation = tf.keras.activations.tanh
        self.decoder_output_activation = tfa.activations.lisht

        self.activation_layer_factory = ActivationLayerFactory(activation=self.activations)
        self.dropout_layer_factory = DropoutLayerFactory(dropout_rate=0.5)
        self.bn_layer_factory = BatchNormalizationLayerFactory()

        self.prepare_model()

    def prepare_encoder(self):

        regularizer = tf.keras.regularizers.l1_l2(0.01)

        encoder_input = tf.keras.Input(shape=(self.in_shape,))
        x = tf.keras.layers.Convolution2D(filters=32, kernel_size=3, strides=2, regularizer=regularizer)(encoder_input)
        x = self.activation_layer_factory.produce()(x)
        x = self.bn_layer_factory.produce()(x)

        x = tf.keras.layers.Convolution2D(filters=64, kernel_size=3, strides=2, regularizer=regularizer)(x)
        x = self.activation_layer_factory.produce()(x)
        x = self.bn_layer_factory.produce()(x)

        x = tf.keras.layers.Flatten()(x)

        x = tf.keras.layers.Dense(self.latent_shape)(x)
        encoder_output = self.encoder_output_activation(x)

        encoder : tf.keras.Model= tf.keras.Model(encoder_input, encoder_output)
        return encoder

    def prepare_decoder(self):

        regularizer = tf.keras.regularizers.l1_l2(0.01)

        decoder_input = tf.keras.Input(shape=(self.latent_shape,))
        # x = tf.keras.layers.(filters=32, kernel_size=3, strides=2, regularizer=regularizer)(decoder_inputs)
        x = tf.keras.layers.Conv2DTranspose(32, 3, 3)(decoder_input)
        decoder_output = self.decoder_output_activation(x)

        decoder : tf.keras.Model= tf.keras.Model(decoder_input, decoder_output)
        decoder.summary()
        exit()
        return decoder


    @tf.function
    def train_step(self, input_data):
        with tf.GradientTape() as tape:
            encoded_data = self.encoder(input_data)
            decoded_data = self.decoder(encoded_data)
            reconstruction_loss = tf.keras.losses.MAE(input_data, decoded_data)

        gradients = tape.gradient(reconstruction_loss, self.trainable_variables)
        self.optimizer.apply_gradients(zip(gradients, self.trainable_variables))
