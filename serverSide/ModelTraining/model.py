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

NumberOfUniqueClasses = 2 # !IMPORTANT! change this base number of classes

# MLP to divide output 
class MLP(nn.Module):
    def __init__(self):
        super(MLP, self).__init__()
        self.layers = nn.Sequential(
            nn.Linear(6, 3),
            nn.ReLU(),
            nn.Linear(3,NumberOfUniqueClasses) 
        )
        

    def forward(self, x):
        x = x.view(-1, 6)
        x = self.layers(x)
        return x