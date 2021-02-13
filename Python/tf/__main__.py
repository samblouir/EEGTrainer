import numpy as np
import scipy.io
import os, string

from shared_functions import load_mat

os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3'
import tensorflow as tf
import torch

ADHD_part1_path = "/data/ADHD_part1/"
ADHD_part2_path = "/data/ADHD_part2/"

# Get the file paths for adhd_part1_paths and adhd_part2_paths
adhd_part1_paths = [ADHD_part1_path+path for path in os.listdir(ADHD_part1_path)]
adhd_part2_paths = [ADHD_part2_path+path for path in os.listdir(ADHD_part2_path)]

adhd_part1_data = [load_mat(path) for path in adhd_part1_paths]
adhd_part2_data = [load_mat(path) for path in adhd_part2_paths]