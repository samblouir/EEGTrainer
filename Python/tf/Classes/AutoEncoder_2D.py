import os

os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3'
import tensorflow as tf
import tensorflow_addons as tfa
import tensorflow_probability as tfp
import numpy as np

from shared_functions import ActivationLayerFactory, DropoutLayerFactory, BatchNormalizationLayerFactory


# Finds reconstruction loss... should help us find out if something is similar to FOCUSING or NOT FOCUSING...
class AutoEncoder_2D(tf.keras.Model):

    def __init__(self, encoder, decoder, loss_function=tf.keras.losses.MSE, *args, **kwargs):
        super().__init__()
        self.encoder = encoder
        self.decoder = decoder

        self.loss_function = loss_function

    def compile(self,
                optimizer=None,
                loss=None,
                metrics=None,
                loss_weights=None,
                weighted_metrics=None,
                run_eagerly=None,
                steps_per_execution=None,
                **kwargs):
        super().compile(optimizer=optimizer)
        self.in_optimizer = optimizer

    @tf.function(experimental_compile=True)
    def call(self, data, training=True, mask=None):
        encoded = self.encoder(data)
        decoded = self.decoder(encoded)
        return decoded

    @tf.function(experimental_compile=True)
    def encode(self, input_data):
        return self.encoder(input_data)

    @tf.function(experimental_compile=True)
    def decode(self, input_data):
        return self.decoder(input_data)

    @tf.function(experimental_compile=True)
    def get_loss(self, data):
        encoded = self.encoder(data)
        decoded = self.decoder(encoded)
        return tf.reduce_mean(self.loss_function(data, decoded))

    @tf.function(experimental_compile=True)
    def train_step(self, input_data):
        with tf.GradientTape() as tape:
            encoded_data = self.encoder(input_data)
            decoded_data = self.decoder(encoded_data)
            reconstruction_loss = self.loss_function(input_data, decoded_data)

        gradients = tape.gradient(reconstruction_loss, self.trainable_variables)
        self.in_optimizer.apply_gradients(zip(gradients, self.trainable_variables))


latent_shape = 1
activations = tfa.activations.lisht
output_activation = activations

activation_layer_factory = ActivationLayerFactory(activation=activations)
dropout_layer_factory = DropoutLayerFactory(dropout_rate=0.5)
bn_layer_factory = BatchNormalizationLayerFactory()

encoder_output_activation = tf.keras.activations.tanh
decoder_output_activation = tfa.activations.lisht
regularizer = tf.keras.regularizers.l1_l2(0.01)


def make_encoder(in_shape):
    encoder_input = tf.keras.Input(shape=in_shape)

    x = tf.keras.layers.Convolution1D(filters=128, kernel_size=2, strides=2, kernel_regularizer=regularizer)(encoder_input)
    x = activation_layer_factory.produce()(x)
    x = bn_layer_factory.produce()(x)

    x = tf.keras.layers.Convolution1D(filters=64, kernel_size=2, strides=2, kernel_regularizer=regularizer)(encoder_input)
    x = activation_layer_factory.produce()(x)
    x = bn_layer_factory.produce()(x)

    x = tf.keras.layers.Convolution1D(filters=32, kernel_size=1, strides=1, kernel_regularizer=regularizer)(x)
    x = activation_layer_factory.produce()(x)
    x = bn_layer_factory.produce()(x)

    x = tf.keras.layers.Flatten()(x)
    x = tf.keras.layers.Dense(latent_shape*3)(x)
    x = activation_layer_factory.produce()(x)
    x = bn_layer_factory.produce()(x)
    x = tf.keras.layers.Dense(latent_shape*2)(x)
    x = tf.keras.layers.Dense(latent_shape)(x)
    encoder_output = encoder_output_activation(x)

    encoder: tf.keras.models.Model = tf.keras.models.Model(encoder_input, encoder_output, name='encoder')
    return encoder


def make_decoder(in_shape):
    decoder_input = tf.keras.Input(shape=latent_shape)
    x = tf.keras.layers.Reshape((1, latent_shape))(decoder_input)

    x = tf.keras.layers.Conv1D(filters=32, kernel_size=1, strides=1, kernel_regularizer=regularizer)(x)
    x = activation_layer_factory.produce()(x)
    x = bn_layer_factory.produce()(x)

    x = tf.keras.layers.Conv1D(filters=64, kernel_size=1, strides=1, kernel_regularizer=regularizer)(x)
    x = activation_layer_factory.produce()(x)
    x = bn_layer_factory.produce()(x)

    x = tf.keras.layers.Conv1D(filters=128, kernel_size=1, strides=1, kernel_regularizer=regularizer)(x)
    x = tf.keras.layers.Conv1DTranspose(filters=in_shape[1], kernel_size=in_shape[0], strides=in_shape[0], kernel_regularizer=regularizer)(x)
    decoder_output = decoder_output_activation(x)

    decoder: tf.keras.Model = tf.keras.Model(inputs=decoder_input, outputs=decoder_output, name="decoder")
    return decoder
