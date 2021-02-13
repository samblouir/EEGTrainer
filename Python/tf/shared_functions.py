import numpy as np
import scipy.io
import h5py

def load_mat(in_path: str) -> np.ndarray:
    return_mat = scipy.io.loadmat(in_path)

    path = in_path.rsplit('/', 1)[1] # /user/home/.../v10p.mat -> v10p.mat
    path = path.split('.')[0] # v10p.mat -> v10p

    return_mat = return_mat[path]
    return_mat = np.array(return_mat)

    return return_mat