from data_Preparation import *
import numpy as np
from train import *


# get raw data from the files

# raw_data_ADHD_trainSet = fetchData('ADHD_part1')
# raw_data_Control_trainSet = fetchData('Control_part1')
# raw_data_ADHD_testSet, raw_data_ADHD_validSet = fetchData('ADHD_part2', False)
# raw_data_Control_testSet, raw_data_Control_validSet = fetchData('Control_part2', False)


#filter out the electrodes data we are not going to use for training

# data_ADHD_trainSet = filterData(raw_data_ADHD_trainSet)
# data_ADHD_testSet = filterData(raw_data_ADHD_testSet)
# data_ADHD_validSet = filterData(raw_data_ADHD_validSet)
# data_Control_trainSet = filterData(raw_data_Control_trainSet)
# data_Control_testSet = filterData(raw_data_Control_testSet)
# data_Control_validSet = filterData(raw_data_Control_validSet)


# Save the data so we dont have to waste any unnecessary processing time

# np.save("./data_Control", data_Control_trainSet)
# np.save("./data_ADHD", data_ADHD_trainSet)

###---------

data_Control= np.load("./data_Control.npy")
data_ADHD = np.load("./data_ADHD.npy")

# Add labels to the dataset
dataset = make_dataset(data_Control,np.full((data_Control.shape[0],1), 0), data_ADHD, np.full((data_ADHD.shape[0],1), 1))

#train our model
mlp = MLP()
train(mlp, dataset, batch_size=256)

print(len(data_Control[0]), data_ADHD)