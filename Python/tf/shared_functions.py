import numpy as np
import scipy.io

def load_mat(in_path: str) -> dict:
    return_mat = scipy.io.loadmat(in_path)
    return return_mat