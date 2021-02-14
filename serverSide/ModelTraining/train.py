from model import *


def get_accuracy(model, data):
    '''
    @model: The model we are running training accuracy on.
    @data: A batch of electrode data to check the accuracy
    @return: The probability of accuracy
    '''

    loader = torch.utils.data.DataLoader(data, batch_size=32)
    model.eval()
    correct = 0
    total = 0
    for el, labels in loader:
        output = model(el.float())
        pred = output.max(1, keepdim=True)[1]
        correct += pred.eq(labels.view_as(pred)).sum().item()
        total += el.shape[0]
    return correct / total



def train(model, train_data, batch_size=512, weight_decay=0.0,
          learning_rate=0.001, num_epochs=101, checkpoint_path='./modelTrain_{0}'):
    '''
    @model: The MLP model we are training
    @batch_size: The batch size to use
    @weight_decay: The weight decay parameter for Adam optimizer
    @learning rate: The learning rate for the adam optimizer
    @nnum_epochs: The number of epochs to run
    '''

    train_loader = torch.utils.data.DataLoader(train_data,
                                               batch_size=batch_size,
                                               shuffle=True)
    criterion = nn.CrossEntropyLoss()
    optimizer = optim.Adam(model.parameters(),
                           lr=learning_rate,
                           weight_decay=weight_decay)
    iters, losses, train_acc, val_acc = [], [], [], []

    # training
    n = 0 
    for epoch in range(num_epochs):
        for el, labels in iter(train_loader):

            # print('norms', el, labels)
            # print('shape', el.shape, labels.shape)
            model.train()
            out = model(el.float())
            # print('out', out)
            loss = criterion(out, labels.squeeze())
            loss.backward()
            optimizer.step()
            optimizer.zero_grad()
            n += 1
        
        # save the current training information
        loss = float(loss)/batch_size
        tacc = get_accuracy(model, train_data)
        # vacc = get_accuracy(model, valid_data)
        # print("Iter %d; Loss %f; Train Acc %.3f; Val Acc %.3f" % (n, loss, tacc, vacc))
        print("Iter %d; Loss %f; Train Acc %.3f;" % (n, loss, tacc))

        iters.append(n)
        losses.append(loss)
        train_acc.append(tacc)

        if (checkpoint_path is not None) and epoch % 10 == 0:
            torch.save(model.state_dict(), checkpoint_path.format(epoch))
        # val_acc.append(vacc)

    # plotting
    plt.title("Learning Curve")
    plt.plot(iters, losses, label="Train")
    plt.xlabel("Iterations")
    plt.ylabel("Loss")
    plt.show()

    plt.title("Learning Curve")
    plt.plot(iters, train_acc, label="Train")

    plt.xlabel("Iterations")
    plt.ylabel("Training Accuracy")
    plt.legend(loc='best')
    plt.show()

    print("Final Training Accuracy: {}".format(train_acc[-1]))

# mlp = MLP()
# train(mlp, dataset, batch_size=32)