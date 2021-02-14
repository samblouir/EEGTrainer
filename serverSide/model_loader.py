"""
This files loads the Machine learning model into the system for real time use.
"""
from model import *

model_load = MLP()
model_data = torch.load('./model') # location to the save CNN using the checkpoint
model_load.load_state_dict(model_data)


def get_accuracy(model, data):
    '''
    @model: The model we are running training accuracy on.
    @data: A batch of images to check the accuracy
    @return: The probability of accuracy
    '''
    loader = torch.utils.data.DataLoader(data, batch_size=1)
    model.eval()
    dat, _ = loader
    output = model(dat.float())
    pred = output.max(1, keepdim=True)[1]
    pred = pred.detach().numpy()
    return pred

def getResultFromModel(lst):
  '''
  An interface which the flask app will utilize
  '''
  res = get_accuracy(model_load, [np.array(lst),[1]])

  return int((res == 1).sum())


