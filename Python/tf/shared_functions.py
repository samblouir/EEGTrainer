import numpy as np
import scipy.io
import h5py

def load_mat(in_path: str) -> np.ndarray:
    return_mat = scipy.io.loadmat(in_path)
    return_mat = np.array(return_mat)
    return return_mat