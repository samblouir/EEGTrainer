import numpy as np
import os, string, scipy.io

os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3'
import tensorflow as tf
import torch

from shared_functions import load_mat

ADHD_part1_path = "/input_data/ADHD_part1/"
ADHD_part2_path = "/input_data/ADHD_part2/"

# Get the file paths for adhd_part1_paths and adhd_part2_paths
adhd_part1_paths = [ADHD_part1_path + path for path in os.listdir(ADHD_part1_path)]
adhd_part2_paths = [ADHD_part2_path + path for path in os.listdir(ADHD_part2_path)]

# Opens the files into numpy arrays
standardize = False
adhd_part1_data = [load_mat(path, standardize=standardize) for path in adhd_part1_paths]
adhd_part2_data = [load_mat(path, standardize=standardize) for path in adhd_part2_paths]

# Print out the input_data for debugging
print('\n\n\n')
for line in adhd_part1_data:
    print(line)
    exit(0)
