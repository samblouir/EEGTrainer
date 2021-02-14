import numpy as np
import multiprocessing as mp
import os

# os.system("python -m pip install -U sklearn tensorflow-addons tensorflow-probability")
import string, scipy.io

from Classes.AutoEncoder_2D import AutoEncoder_2D, make_decoder, make_encoder

os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3'
import tensorflow as tf
import tensorflow_addons as tfa
# import torch

from shared_functions import load_mat

ADHD_part1_path = "/input_data/ADHD_part1/"
ADHD_part2_path = "/input_data/ADHD_part2/"

# Get the file paths for adhd_part1_paths and adhd_part2_paths
adhd_part1_paths = [ADHD_part1_path + path for path in os.listdir(ADHD_part1_path)]
adhd_part2_paths = [ADHD_part2_path + path for path in os.listdir(ADHD_part2_path)]

# Opens the files into numpy arrays
standardize = False
channel_indices = [3, 4, 5, 6, 13, 14]
window_size = 3  # gives us a 2D array


# Quick and dirty copy-pasted functions
def load_adhd_part1(index):
    return load_mat(adhd_part1_paths[index], standardize=standardize, channel_indices=channel_indices, window_size=window_size)


def load_adhd_part2(index):
    return load_mat(adhd_part2_paths[index], standardize=standardize, channel_indices=channel_indices, window_size=window_size)


# Multiprocessing for loading and processing the data faster
adhd_part1_data = np.squeeze(np.array(mp.Pool(mp.cpu_count()).map(load_adhd_part1, range(len(adhd_part1_paths)))))
adhd_part2_data = np.squeeze(np.array(mp.Pool(mp.cpu_count()).map(load_adhd_part2, range(len(adhd_part2_paths)))))

# Print out the input_data for debugging
print('\n\n\n')
for batch, line in enumerate(adhd_part1_data):
    print(f"adhd_part1_data #{batch}: {line}, shape: {line.shape}")
    break

print('\n\n')
print(f"adhd_part1_data.shape: {adhd_part1_data.shape}")
in_shape = (window_size, len(channel_indices))

encoder = make_encoder(in_shape=in_shape)
decoder = make_decoder(in_shape=in_shape)
lr_schedule = tfa.optimizers.ExponentialCyclicalLearningRate(1e-4, 1e-2, step_size=2000, gamma=0.96)
in_optimizer = tfa.optimizers.LAMB(learning_rate=lr_schedule)

AE = AutoEncoder_2D(encoder=encoder, decoder=decoder)
AE.compile(in_optimizer)

adhd_part1_data = tf.convert_to_tensor(adhd_part1_data, dtype=tf.int32)
batch_size = 3


@tf.function(experimental_compile=True)
def train_loop(data, batch_size=3):
    for batch in range(0, len(data), batch_size):
        each = data[batch * batch_size:batch * batch_size + batch_size]
        AE.train_step(each)


epochs = 100000
for epoch in range(epochs):
    train_loop(adhd_part1_data, batch_size)
    if epoch % 1000 == 0:
        data = adhd_part1_data[0:batch_size]
        loss_value = AE.get_loss(data)
        print(f"current loss == {loss_value}")
# AE.fit(adhd_part1_data)
exit(0)
for each in adhd_part1_data:
    AE.fit(each)

# AE.train_step(adhd_part1_data)
# for each in adhd_part1_data:
#     AE.train_step(each)
# AE.fit(
#     x=adhd_part1_data,
#     verbose=2,
#     epochs=10,
# )

temp = adhd_part1_data[0]
a = AE.encode(temp)
b = AE.decode(temp)
print(temp)
print(a)
print(b)
