from collections import Iterable
import numpy as np
import os, scipy.io

from typing import List

os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3'
import tensorflow as tf
import tensorflow_addons as tfa
import tensorflow_probability as tfp


# channels 3, 4, 5, 6, 13, and 14
def load_mat(in_path: str, standardize: bool = False, channel_indices=None, window_size: int = 3) -> np.ndarray:
    if channel_indices is None:
        channel_indices = [3, 4, 5, 6, 13, 14]

    loaded_mat = scipy.io.loadmat(in_path)

    path = in_path.rsplit('/', 1)[1]  # /user/home/.../v10p.mat -> v10p.mat
    path = path.split('.')[0]  # v10p.mat -> v10p

    loaded_mat = loaded_mat[path]

    loaded_mat = list(loaded_mat)
    # loaded_mat = np.array(loaded_mat)[:-(len(loaded_mat)%window_size)]
    # loaded_mat = np.array(loaded_mat)
    loaded_mat = loaded_mat[:6]
    # loaded_mat = loaded_mat[:12]
    # loaded_mat = loaded_mat[:9285]

    # print(f"load_mat(): {path}.shape = {loaded_mat.shape}, carve = {(len(loaded_mat)%window_size)}")

    # Grab the relevant indices
    return_list = []
    triplets = []
    # return_list = np.array_split(loaded_mat, window_size)

    for index, row in enumerate(loaded_mat[:-window_size]):

        curr = np.array([row[indice] for indice in channel_indices])
        triplets.append(curr)
        if len(triplets) == 3:
            # print(f"batch == {batch}")
            triplets=np.array(triplets)
            # print(f"triplets == {triplets}")
            print(f"triplets.shape == {triplets.shape}")

            return_list.append(triplets)
            # print(f"return_list == {return_list}")
            # print(f"return_list.shape == {return_list.shape}")
            triplets = []

            # exit()

    if standardize:
        return_list = standardize_data(return_list)

    return_list = np.array(return_list)
    return return_list


def standardize_data(input_iterable: Iterable) -> np.ndarray:
    return_list = input_iterable - np.mean(input_iterable)
    return_list /= np.std(return_list)
    return np.array(return_list)


# code from my github
class ActivationLayerFactory():
    def __init__(self, activation=tf.keras.activations.relu):
        self.__activation_layer_counter = 0
        self.activation = activation

    def produce(self, activation=None):
        if activation is None: activation = tf.keras.activations.relu
        temp = tf.keras.layers.Activation(activation=activation, name='activation_' + str(self.__activation_layer_counter))
        self.__activation_layer_counter += 1
        return temp


class DropoutLayerFactory():
    def __init__(self, dropout_rate=0.5):
        self.__dropout_layer_counter = 0
        self.rate = dropout_rate

    def produce(self, rate=None):
        if rate == None: rate = self.rate
        temp = tf.keras.layers.Dropout(rate=rate, name='dropout' + str(self.__dropout_layer_counter))
        self.__dropout_layer_counter += 1
        return temp


class BatchNormalizationLayerFactory():
    def __init__(self):
        self.__batchnormalization_layer_count = 0

    def produce(self):
        temp = tf.keras.layers.BatchNormalization(name='BN' + str(self.__batchnormalization_layer_count))
        self.__batchnormalization_layer_count += 1
        return temp
