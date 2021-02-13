import numpy as np
import multiprocessing as mp
import os

# os.system("python -m pip install -U sklearn tensorflow-addons tensorflow-probability")
import string, scipy.io

from Classes.AutoEncoder_2D import AutoEncoder_2D

os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3'
import tensorflow as tf
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
adhd_part1_data = np.array(mp.Pool(mp.cpu_count()).map(load_adhd_part1, range(len(adhd_part1_paths))))
adhd_part1_data = np.squeeze(adhd_part1_data)
# adhd_part2_data = np.array(mp.Pool(mp.cpu_count()).map(load_adhd_part2, range(len(adhd_part2_paths))))
# adhd_part2_data = np.squeeze(adhd_part2_data)

# Print out the input_data for debugging
print('\n\n\n')
for index, line in enumerate(adhd_part1_data):
    print(f"adhd_part1_data #{index}: {line}, shape: {line.shape}")
    break

print('\n\n')
print(f"adhd_part1_data.shape: {adhd_part1_data.shape}")

AE = AutoEncoder_2D(in_shape=(window_size, len(channel_indices),))
AE.compile(AE.in_optimizer)

tD = [[0, 1, 2, 3, 4, 5], [6, 7, 8, 9, 10, 11]]
tD = np.array(tD)
tD = tf.convert_to_tensor(tD)
AE.fit(tD)
# adhd_part1_data = tf.data.Dataset.from_tensor_slices(adhd_part1_data).batch(4)

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
