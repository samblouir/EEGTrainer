import numpy as np
import os, string

os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3'
import tensorflow as tf
import torch
import scipy.io


data_path = "/data/ADHD_part1/v1p.mat"
ADHD_part1 = open(data_path,'r')
ADHD_part1 = scipy.io.loadmat(data_path)

print("Hello!")
print(ADHD_part1)