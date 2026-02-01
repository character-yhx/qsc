clc;
clear all;
close all;
set(gcf,'unit','centimeters','position',[1,2,20,8])

sub1 = subplot(1,2,1)

hold on
MLP_train_one_episode = xlsread('1qubit_target2_four_x_MLP_episode10000_10runs_训练acc.xls', 'B:B');
x=1:length(MLP_train_one_episode(:));
A = plot(x, MLP_train_one_episode,'-', 'LineWidth',1.5,'Marker','s',...
    'MarkerSize',4,'MarkerFaceColor',[0.171875,0.63671875,0.37890625],'MarkerIndices',[2000 4000 6000 8000 10000], 'color',[0.171875,0.63671875,0.37890625]);
hold on
QNN_train_one_episode = xlsread('1qubit_target2_four_y_MLP_episode10000_10runs_训练acc.xls', 'B:B');
x=1:length(QNN_train_one_episode(:));
B = plot(x, QNN_train_one_episode,'-', 'LineWidth',1.5,'Marker','o',...
    'MarkerSize',4,'MarkerFaceColor',[0.9453125,0.41796875,0.30078125],'MarkerIndices',[2000 4000 6000 8000 10000], 'color',[0.9453125,0.41796875,0.30078125]);
hold on
QNN_MLP_train_one_episode = xlsread('1qubit_target2_four_z_MLP_episode10000_10runs_训练acc.xls', 'B:B');
x=1:length(QNN_MLP_train_one_episode(:));
C = plot(x, QNN_MLP_train_one_episode,'-', 'LineWidth',1.5,'Marker','^',...
    'MarkerSize',4,'MarkerFaceColor',[0.05078125,0.32421875,0.61328125],'MarkerIndices',[2000 4000 6000 8000 10000], 'color',[0.05078125,0.32421875,0.61328125]);
hold on
MLP_train_one_episode = xlsread('1qubit_target2_four_xy_MLP_episode10000_10runs_训练acc.xls', 'B:B');
x=1:length(MLP_train_one_episode(:));
D = plot(x, MLP_train_one_episode,'-', 'LineWidth',1.5,'Marker','x',...
    'MarkerSize',4,'MarkerFaceColor',[139/255,101/255,8/255],'MarkerIndices',[2000 4000 6000 8000 10000], 'color',[139/255,101/255,8/255]);
hold on
QNN_train_one_episode = xlsread('1qubit_target2_four_xz_MLP_episode10000_10runs_训练acc.xls', 'B:B');
x=1:length(QNN_train_one_episode(:));
E = plot(x, QNN_train_one_episode,'-', 'LineWidth',1.5,'Marker','+',...
    'MarkerSize',4,'MarkerFaceColor',[139/255,123/255,139/255],'MarkerIndices',[2000 4000 6000 8000 10000], 'color',[139/255,123/255,139/255]);
hold on
QNN_MLP_train_one_episode = xlsread('1qubit_target2_four_yz_MLP_episode10000_10runs_训练acc.xls', 'B:B');
x=1:length(QNN_MLP_train_one_episode(:));
F = plot(x, QNN_MLP_train_one_episode,'-', 'LineWidth',1.5,'Marker','p',...
    'MarkerSize',4,'MarkerFaceColor',[85/255,26/255,139/255],'MarkerIndices',[2000 4000 6000 8000 10000], 'color',[85/255,26/255,139/255]);
hold on
QNN_MLP_train_one_episode = xlsread('1qubit_target2_four_xyz_MLP_episode10000_10runs_训练acc.xls', 'B:B');
x=1:length(QNN_MLP_train_one_episode(:));
G = plot(x, QNN_MLP_train_one_episode,'-', 'LineWidth',1.5,'Marker','d',...
    'MarkerSize',4,'MarkerFaceColor',[162/255,181/255,205/255],'MarkerIndices',[2000 4000 6000 8000 10000], 'color',[162/255,181/255,205/255]);
xlabel({'Episodes';'(a)'})
ylabel('Training accuracy')
h1=legend([A B C D E F G],'MLP^1_1', 'MLP^1_2', 'MLP^1_3', 'MLP^1_4', 'MLP^1_5', 'MLP^1_6', 'MLP^1_7', 'Location','best');
set(sub1,'Box','on');



sub2 = subplot(1,2,2)

hold on
MLP_test_one_episode = xlsread('1qubit_target2_four_x_MLP_episode10000_10runs_测试acc.xls', 'B:B');
x=1:length(MLP_test_one_episode(:));
A = plot(x, MLP_test_one_episode,'-', 'LineWidth',1.5,'Marker','s',...
    'MarkerSize',4,'MarkerFaceColor',[0.171875,0.63671875,0.37890625],'MarkerIndices',[2000 4000 6000 8000 10000], 'color',[0.171875,0.63671875,0.37890625]);
hold on
QNN_test_one_episode = xlsread('1qubit_target2_four_y_MLP_episode10000_10runs_测试acc.xls', 'B:B');
x=1:length(QNN_test_one_episode(:));
B = plot(x, QNN_test_one_episode,'-', 'LineWidth',1.5,'Marker','o',...
    'MarkerSize',4,'MarkerFaceColor',[0.9453125,0.41796875,0.30078125],'MarkerIndices',[2000 4000 6000 8000 10000], 'color',[0.9453125,0.41796875,0.30078125]);
hold on
QNN_MLP_test_one_episode = xlsread('1qubit_target2_four_z_MLP_episode10000_10runs_测试acc.xls', 'B:B');
x=1:length(QNN_MLP_test_one_episode(:));
C = plot(x, QNN_MLP_test_one_episode,'-', 'LineWidth',1.5,'Marker','^',...
    'MarkerSize',4,'MarkerFaceColor',[0.05078125,0.32421875,0.61328125],'MarkerIndices',[2000 4000 6000 8000 10000], 'color',[0.05078125,0.32421875,0.61328125]);
hold on
MLP_train_one_episode = xlsread('1qubit_target2_four_xy_MLP_episode10000_10runs_测试acc.xls', 'B:B');
x=1:length(MLP_train_one_episode(:));
D = plot(x, MLP_train_one_episode,'-', 'LineWidth',1.5,'Marker','x',...
    'MarkerSize',4,'MarkerFaceColor',[139/255,101/255,8/255],'MarkerIndices',[2000 4000 6000 8000 10000], 'color',[139/255,101/255,8/255]);
hold on
QNN_train_one_episode = xlsread('1qubit_target2_four_xz_MLP_episode10000_10runs_测试acc.xls', 'B:B');
x=1:length(QNN_train_one_episode(:));
E = plot(x, QNN_train_one_episode,'-', 'LineWidth',1.5,'Marker','+',...
    'MarkerSize',4,'MarkerFaceColor',[139/255,123/255,139/255],'MarkerIndices',[2000 4000 6000 8000 10000], 'color',[139/255,123/255,139/255]);
hold on
QNN_MLP_train_one_episode = xlsread('1qubit_target2_four_yz_MLP_episode10000_10runs_测试acc.xls', 'B:B');
x=1:length(QNN_MLP_train_one_episode(:));
F = plot(x, QNN_MLP_train_one_episode,'-', 'LineWidth',1.5,'Marker','p',...
    'MarkerSize',4,'MarkerFaceColor',[85/255,26/255,139/255],'MarkerIndices',[2000 4000 6000 8000 10000], 'color',[85/255,26/255,139/255]);
hold on
QNN_MLP_train_one_episode = xlsread('1qubit_target2_four_xyz_MLP_episode10000_10runs_测试acc.xls', 'B:B');
x=1:length(QNN_MLP_train_one_episode(:));
G = plot(x, QNN_MLP_train_one_episode,'-', 'LineWidth',1.5,'Marker','d',...
    'MarkerSize',4,'MarkerFaceColor',[162/255,181/255,205/255],'MarkerIndices',[2000 4000 6000 8000 10000], 'color',[162/255,181/255,205/255]);
xlabel({'Episodes';'(b)'})
ylabel('Testing accuracy')
h1=legend([A B C D E F G],'MLP^1_1', 'MLP^1_2', 'MLP^1_3', 'MLP^1_4', 'MLP^1_5', 'MLP^1_6', 'MLP^1_7', 'Location','best');
set(sub2,'Box','on');
