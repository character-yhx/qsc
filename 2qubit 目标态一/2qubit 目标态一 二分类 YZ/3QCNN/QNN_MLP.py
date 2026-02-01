import numpy as np
import os
import torch
import torch.nn as nn
import torch.nn.functional as F
from torch.autograd import Variable
import csv
from time import *
import pennylane as qml



train_set = []
train_set_lable = []
test_set = []
test_set_lable = []
event_info = []
state_info1 = []
state_info2 = []
state_info3 = []
state_info4 = []
state_info5 = []
state_info6 = []
state_info7 = []
state_info8 = []
state_info9 = []
state_info10 = []
state_info11 = []
state_info12 = []
state_info13 = []
state_info14 = []
state_info15 = []
file = open('event1.csv')
reader = csv.reader(file)
for row in reader:
    event_info.append(int(0))
    state_info1.append(float(row[2]))
    state_info2.append(float(row[3]))
    state_info3.append(float(row[4]))
    state_info4.append(float(row[5]))
    state_info5.append(float(row[6]))
    state_info6.append(float(row[7]))
    state_info7.append(float(row[8]))
    state_info8.append(float(row[9]))
    state_info9.append(float(row[10]))
    state_info10.append(float(row[11]))
    state_info11.append(float(row[12]))
    state_info12.append(float(row[13]))
    state_info13.append(float(row[14]))
    state_info14.append(float(row[15]))
    state_info15.append(float(row[16]))
file = open('event2.csv')
reader = csv.reader(file)
for row in reader:
    event_info.append(int(0))
    state_info1.append(float(row[2]))
    state_info2.append(float(row[3]))
    state_info3.append(float(row[4]))
    state_info4.append(float(row[5]))
    state_info5.append(float(row[6]))
    state_info6.append(float(row[7]))
    state_info7.append(float(row[8]))
    state_info8.append(float(row[9]))
    state_info9.append(float(row[10]))
    state_info10.append(float(row[11]))
    state_info11.append(float(row[12]))
    state_info12.append(float(row[13]))
    state_info13.append(float(row[14]))
    state_info14.append(float(row[15]))
    state_info15.append(float(row[16]))
file = open('event3.csv')
reader = csv.reader(file)
for row in reader:
    event_info.append(int(1))
    state_info1.append(float(row[2]))
    state_info2.append(float(row[3]))
    state_info3.append(float(row[4]))
    state_info4.append(float(row[5]))
    state_info5.append(float(row[6]))
    state_info6.append(float(row[7]))
    state_info7.append(float(row[8]))
    state_info8.append(float(row[9]))
    state_info9.append(float(row[10]))
    state_info10.append(float(row[11]))
    state_info11.append(float(row[12]))
    state_info12.append(float(row[13]))
    state_info13.append(float(row[14]))
    state_info14.append(float(row[15]))
    state_info15.append(float(row[16]))
file = open('event4.csv')
reader = csv.reader(file)
for row in reader:
    event_info.append(int(1))
    state_info1.append(float(row[2]))
    state_info2.append(float(row[3]))
    state_info3.append(float(row[4]))
    state_info4.append(float(row[5]))
    state_info5.append(float(row[6]))
    state_info6.append(float(row[7]))
    state_info7.append(float(row[8]))
    state_info8.append(float(row[9]))
    state_info9.append(float(row[10]))
    state_info10.append(float(row[11]))
    state_info11.append(float(row[12]))
    state_info12.append(float(row[13]))
    state_info13.append(float(row[14]))
    state_info14.append(float(row[15]))
    state_info15.append(float(row[16]))
state_info_all = []
for i in range(len(state_info1)):
    state_info_all.append([state_info2[i], state_info3[i], state_info8[i], state_info10[i], state_info12[i], state_info15[i]])




train_set = state_info_all[0:4800] + \
            state_info_all[6000:10800]
train_set_lable = event_info[0:4800] + \
                  event_info[6000:10800]
test_set = state_info_all[4800:6000] + \
            state_info_all[10800:12000]
test_set_lable = event_info[4800:6000] + \
                  event_info[10800:12000]
train_set = Variable(torch.Tensor(train_set).float())
train_set_lable = Variable(torch.Tensor(train_set_lable).long())
test_set = Variable(torch.Tensor(test_set).float())
test_set_lable = Variable(torch.Tensor(test_set_lable).long())

def one_hot_embedding(labels, num_classes):
    y = torch.eye(num_classes)
    return y[labels]

train_set_lable_onehot = train_set_lable
test_set_lable_onehot = test_set_lable


n_qubits = 6
dev = qml.device("default.qubit", wires=n_qubits)

@qml.qnode(dev)
def qnode(inputs, weights):
    qml.AngleEmbedding(inputs, wires=range(n_qubits))
    qml.BasicEntanglerLayers(weights, wires=range(n_qubits))
    return [qml.expval(qml.PauliZ(wires=i)) for i in range(n_qubits)]

n_layers = 1
weight_shapes = {"weights": (n_layers, n_qubits)}



class MLP(nn.Module):
    def __init__(self, hidden_size):
        super(MLP, self).__init__()
        self.fc1 = nn.Linear(6, hidden_size)
        self.fc2 = nn.Linear(hidden_size, 2)
        self.softmax = nn.Softmax(dim=1)
        self.qlayer1 = qml.qnn.TorchLayer(qnode, weight_shapes)

    def forward(self, X):
        X = self.qlayer1(X)
        X = F.relu(self.fc1(X))
        X = self.fc2(X)
        return X

run_num = 10
total_episode = 10000
layer_num = 3
hidden_size = 6
time_runs = []
train_loss_runs = []
train_acc_runs = []
test_loss_runs = []
test_acc_runs = []
for run in range(run_num):
    MLP_QNN = open(f'2qubit_target1_binary_yz_QNN_MLP_episode{total_episode}_run{run+1}_训练loss_训练acc_测试loss_测试acc_时间.csv', 'w')
    writer_data = csv.writer(MLP_QNN)
    starttime = time()
    net = MLP(hidden_size)
    criterion = nn.CrossEntropyLoss()
    optimizer = torch.optim.SGD(net.parameters(), lr=0.05)
    time_record, train_loss_record, test_loss_record, train_record, test_record = [], [], [], [], []

    for episode in range(total_episode):
        optimizer.zero_grad()
        out = net(train_set)
        train_loss = criterion(out, train_set_lable_onehot)
        train_loss.backward()
        optimizer.step()

        if episode % 1 == 0:
            with torch.no_grad():
                predict_train = net(train_set)
                _, predict_train_y = torch.max(predict_train, 1)
                correct_train = (predict_train_y == train_set_lable).sum().item()
                predict_test = net(test_set)
                test_loss = criterion(predict_test, test_set_lable_onehot)
                _, predict_test_y = torch.max(predict_test, 1)
                correct_test = (predict_test_y == test_set_lable).sum().item()
            endtime = time()
            cost_time = (endtime - starttime)
            print(f'2qubit_target1_binary_yz_QNN_MLP, 回合 %d, 训练 loss %f, 训练 acc %f, 测试 loss %f, 测试 acc %f, 时间 %fs' % (episode, train_loss.data, correct_train / len(train_set_lable), test_loss.data, correct_test / len(test_set_lable), cost_time))
            time_record.append(cost_time)
            train_loss_record.append(train_loss.data.numpy())
            train_record.append(correct_train / len(train_set_lable))
            test_loss_record.append(test_loss.data.numpy())
            test_record.append(correct_test / len(test_set_lable))


            data = [train_loss.data.numpy(), correct_train / len(train_set_lable), test_loss.data.numpy(), correct_test / len(test_set_lable), cost_time]
            writer_data.writerow(data)
            if episode == total_episode-1:
                MLP_QNN.close()
                time_runs.append(time_record)
                train_loss_runs.append(train_loss_record)
                train_acc_runs.append(train_record)
                test_loss_runs.append(test_loss_record)
                test_acc_runs.append(test_record)


    if not os.path.exists('learned_model/'):
        os.mkdir('learned_model/')
    model_path = 'learned_model/'
    if not os.path.exists(model_path):
        os.mkdir(model_path)
    torch.save(net.state_dict(), model_path + f'2qubit_target1_binary_yz_QNN_MLP_episode{total_episode}_run{run+1}_model.pth')
    net.load_state_dict(torch.load(model_path + f'2qubit_target1_binary_yz_QNN_MLP_episode{total_episode}_run{run+1}_model.pth'))


time_runs = np.transpose(time_runs)
train_loss_runs = np.transpose(train_loss_runs)
train_acc_runs = np.transpose(train_acc_runs)
test_loss_runs = np.transpose(test_loss_runs)
test_acc_runs = np.transpose(test_acc_runs)

np.savetxt(f'2qubit_target1_binary_yz_QNN_MLP_episode{total_episode}_{run_num}runs_时间.csv', time_runs, delimiter=',', fmt='%1.8f')
np.savetxt(f'2qubit_target1_binary_yz_QNN_MLP_episode{total_episode}_{run_num}runs_训练loss.csv', train_loss_runs, delimiter=',', fmt='%1.8f')
np.savetxt(f'2qubit_target1_binary_yz_QNN_MLP_episode{total_episode}_{run_num}runs_训练acc.csv', train_acc_runs, delimiter=',', fmt='%1.8f')
np.savetxt(f'2qubit_target1_binary_yz_QNN_MLP_episode{total_episode}_{run_num}runs_测试loss.csv', test_loss_runs, delimiter=',', fmt='%1.8f')
np.savetxt(f'2qubit_target1_binary_yz_QNN_MLP_episode{total_episode}_{run_num}runs_测试acc.csv', test_acc_runs, delimiter=',', fmt='%1.8f')





