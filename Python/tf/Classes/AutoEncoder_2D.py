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

    def __init__(self, in_shape=None, out_shape=None, latent_shape=2, hidden_layer_count=3, density_multiplier=2, *args, **kwargs):
        super().__init__()
        self.in_shape = in_shape
        self.out_shape = out_shape
        self.latent_shape = latent_shape


        # self.encoder = self.prepare_encoder()
        # self.decoder = self.prepare_decoder()

        ######################################################################


        decoder_input = tf.keras.Input(shape=self.latent_shape)
        x = tf.keras.layers.Reshape((1, self.latent_shape))(decoder_input)
        # x = tf.keras.layers.Reshape((1, self.latent_shape))(encoder_output)
        x = tf.keras.layers.Conv1DTranspose(filters=self.in_shape[1], kernel_size=3, strides=3, kernel_regularizer=regularizer)(x)
        self.decoder_output = self.decoder_output_activation(x)

        self.decoder: tf.keras.Model = tf.keras.Model(inputs=decoder_input, outputs=self.decoder_output)
        self.decoder.summary()


    def call(self, data):
        encoded = self.encoder(data)
        decoded = self.decoder(encoded)
        return decoded


    # @tf.function
    # def encode(self, input_data):
    #     return self.encoder(input_data)
    #
    # @tf.function
    # def decode(self, input_data):
    #     return self.decoder(input_data)

    @tf.function
    def train_step(self, input_data):
        with tf.GradientTape() as tape:
            # encoded_data = self.encoder(input_data)
            # decoded_data = self.decoder(encoded_data)
            reconstruction_loss = tf.keras.losses.MAE(input_data, self.call(input_data))

        gradients = tape.gradient(reconstruction_loss, self.trainable_variables)
        self.in_optimizer.apply_gradients(zip(gradients, self.trainable_variables))



activation_layer_factory = ActivationLayerFactory(activation=activations)
dropout_layer_factory = DropoutLayerFactory(dropout_rate=0.5)
bn_layer_factory = BatchNormalizationLayerFactory()

loss_function = tf.keras.losses.MAE

lr_schedule = tfa.optimizers.ExponentialCyclicalLearningRate(1e-4, 1e-2, step_size=2000, gamma=0.96)
in_optimizer = tfa.optimizers.LAMB(learning_rate=lr_schedule)

activations = tfa.activations.lisht
output_activation = self.activations

encoder_output_activation = tf.keras.activations.tanh
decoder_output_activation = tfa.activations.lisht
regularizer = tf.keras.regularizers.l1_l2(0.01)

# self.encoder_input = tf.keras.Input(shape=self.in_shape)
encoder_input = tf.keras.Input(shape=(3, 6,))
x = tf.keras.layers.Convolution1D(filters=32, kernel_size=2, strides=2, kernel_regularizer=regularizer)(self.encoder_input)
x = self.activation_layer_factory.produce()(x)
x = self.bn_layer_factory.produce()(x)
x = tf.keras.layers.Convolution1D(filters=64, kernel_size=1, strides=1, kernel_regularizer=regularizer)(x)
x = self.activation_layer_factory.produce()(x)
x = self.bn_layer_factory.produce()(x)
x = tf.keras.layers.Flatten()(x)
x = tf.keras.layers.Dense(self.latent_shape)(x)
encoder_output = self.encoder_output_activation(x)

self.encoder: tf.keras.Model = tf.keras.Model(self.encoder_input, encoder_output)
self.encoder.summary()
encoder = tf.keras.models.Model(enc_input, ENCODER_OUTPUT_ACTIVATION, name='encoder')