import numpy as np
import scipy.io
import os
import matplotlib
import matplotlib.pyplot as plt

import torch
import torch.nn as nn
import torch.optim as optim
import  torchvision.datasets
import torchvision.models as models


def fetchData(folderName, train = True):
    '''
    fetch data from file.
    @return: train, test and valid dataset
    '''
    train_path = "../../data/" + folderName # edit me
    
    data = np.array([])

    directory = os.fsencode(train_path)
        
    for file in os.listdir(directory):
        filename = os.fsdecode(file)
        if filename.endswith(".mat"): 
            mat = scipy.io.loadmat(train_path + "/" +filename)

            if (len(data) == 0):
                data = np.array(mat[os.path.splitext(filename)[0]])
                continue
            else:
                temp = np.array(mat[os.path.splitext(filename)[0]])
            
            arr = np.vstack((data, temp))

            data = arr
            continue
        else:
            continue
    
    if (train == False):
        split_data = np.array_split(data, 8)
        return split_data[0], split_data[1]
    else:
        split_data = np.array_split(data, 4)
        return split_data[0]

    return data

def filterData(data):
    '''
    We only care about 6 electrode channel for now (to keep it simple). So we decided
    to keep F3, F4, C3, C4, T7 and T8
    @data: np.array containing all the electrode data
    '''
    filtered = np.delete(data, (0,1,6,7,8,9,10,11,14,15,16,17,18), axis=1)
    return filtered


def make_dataset(data_ADHD, label_ADHD, data_Control, labels_control):
    '''
    We are adding labels to the dataset. All the ADHD are being labeled 1 and 
    control being label 0
    '''
    x_data = np.vstack((data_ADHD,data_Control))
    labels = np.vstack((label_ADHD,labels_control))
    train_data = []
    print(labels)
    for i in range(len(x_data)):
        train_data.append([x_data[i], labels[i]])
    
    return train_data

