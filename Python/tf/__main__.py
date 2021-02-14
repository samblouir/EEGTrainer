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
control_part1_path = "/input_data/Control_part1/"

# Get the file paths for adhd_part1_paths and control_part1_paths
adhd_part1_paths = [ADHD_part1_path + path for path in os.listdir(ADHD_part1_path)]
control_part1_paths = [control_part1_path + path for path in os.listdir(control_part1_path)]

# Opens the files into numpy arrays
standardize = False
channel_indices = [3, 4, 5, 6, 13, 14]
window_size = 3  # gives us a 2D array
batch_size = 30


# Quick and dirty copy-pasted functions
def load_adhd_part1(index):
    return load_mat(adhd_part1_paths[index], standardize=standardize, channel_indices=channel_indices, window_size=window_size)


def load_control_part1(index):
    return load_mat(control_part1_paths[index], standardize=standardize, channel_indices=channel_indices, window_size=window_size)


# Multiprocessing for loading and processing the data faster
adhd_part1_data = np.squeeze(np.array(mp.Pool(mp.cpu_count()).map(load_adhd_part1, range(len(adhd_part1_paths))), dtype=np.float32))
control_part1_data = np.squeeze(np.array(mp.Pool(mp.cpu_count()).map(load_control_part1, range(len(control_part1_paths))), dtype=np.float32))

flat_data = adhd_part1_data.flatten()
mean, std_dev = np.median(flat_data), np.std(flat_data)
for index, row in enumerate(adhd_part1_data):
    adhd_part1_data[index] = (row - mean) / std_dev

flat_data = control_part1_data.flatten()
mean, std_dev = np.median(flat_data), np.std(flat_data)
for index, row in enumerate(control_part1_data):
    control_part1_data[index] = (row - mean) / std_dev

# Print out the input_data for debugging
print('\n\n\n')
for batch, line in enumerate(adhd_part1_data):
    print(f"adhd_part1_data #{batch}: {line}, shape: {line.shape}")
    break
for batch, line in enumerate(control_part1_data):
    print(f"control_part1_data #{batch}: {line}, shape: {line.shape}")
    break

print('\n\n')
print(f"adhd_part1_data.shape: {adhd_part1_data.shape}")
print(f"control_part1_data.shape: {control_part1_data.shape}")

#########################
## Defining the model
#########################
in_shape = (window_size, len(channel_indices))

encoder = make_encoder(in_shape=in_shape)
decoder = make_decoder(in_shape=in_shape)

encoder.summary()
decoder.summary()

lr_schedule = tfa.optimizers.ExponentialCyclicalLearningRate(1e-4, 1e-2, step_size=2000, gamma=0.96)
in_optimizer = tfa.optimizers.LAMB(learning_rate=lr_schedule)

AE = AutoEncoder_2D(encoder=encoder, decoder=decoder)
AE.compile(in_optimizer)

adhd_part1_data = tf.convert_to_tensor(adhd_part1_data, dtype=tf.float32)


@tf.function(experimental_compile=True)
def train_loop(data, batch_size=3):
    for batch in range(0, len(data), batch_size):
        start = batch * batch_size
        each = data[start:start + batch_size]
        AE.train_step(each)


print('Training...')
epochs = 10000
for epoch in range(epochs):
    train_loop(adhd_part1_data, batch_size=batch_size)
    if epoch % 1000 == 0:
        adhd_data = adhd_part1_data[0:batch_size]
        adhd_loss_value = AE.get_loss(adhd_data)
        control_data = control_part1_data[0:batch_size]
        control_loss_value = AE.get_loss(control_data)
        print(
            "\n",
            f"Epoch #{epoch}:",
            # f"\n target: \n {adhd_data[0]}",
            # f"\n prediction on adhd: \n {AE.call(adhd_data[0:1])}",
            # f"\n prediction on control: \n {AE.call(control_data[0:1])}",
            f" \t reconstruction loss on ADHD == {adhd_loss_value:0.2f}",
            f" \t reconstruction loss on control == {control_loss_value:0.2f}",
            sep='', end='', flush=True,
        )

        if adhd_loss_value < 0.25:
            print('\n\n')
            break

AE.encoder.save("/EEGTrainer/saved_models/encoder_2D")
AE.decoder.save("/EEGTrainer/saved_models/decoder_2D")

exit(0)
