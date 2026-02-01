clc;
clear all;
close all;
set(gcf,'unit','centimeters','position',[1,2,20,8])

sub1 = subplot(1,2,1)

hold on
MLP_train_one_episode = xlsread('MLP_1_episode1000_10runs_训练acc.xls', 'B:B');
x=1:length(MLP_train_one_episode(:));
A = plot(x, MLP_train_one_episode,'-', 'LineWidth',1.5,'Marker','s',...
    'MarkerSize',4,'MarkerFaceColor',[0.171875,0.63671875,0.37890625],'MarkerIndices',[200 400 600 800 1000], 'color',[0.171875,0.63671875,0.37890625]);
hold on
QNN_train_one_episode = xlsread('QNN_1_episode1000_10runs_训练acc.xls', 'C:C');
x=1:length(QNN_train_one_episode(:));
B = plot(x, QNN_train_one_episode,'-', 'LineWidth',1.5,'Marker','o',...
    'MarkerSize',4,'MarkerFaceColor',[0.9453125,0.41796875,0.30078125],'MarkerIndices',[200 400 600 800 1000], 'color',[0.9453125,0.41796875,0.30078125]);
hold on
QNN_MLP_train_one_episode = xlsread('QNN_MLP_episode1000_10runs_训练acc.xls', 'B:B');
x=1:length(QNN_MLP_train_one_episode(:));
C = plot(x, QNN_MLP_train_one_episode,'-', 'LineWidth',1.5,'Marker','^',...
    'MarkerSize',4,'MarkerFaceColor',[0.05078125,0.32421875,0.61328125],'MarkerIndices',[200 400 600 800 1000], 'color',[0.05078125,0.32421875,0.61328125]);
xlabel({'Episodes';'(a)'})
ylabel('Training accuracy')
h1=legend([A B C],'MLP', 'QNN', 'QCNN', 'Location','best');
set(sub1,'Box','on');



sub2 = subplot(1,2,2)

hold on
MLP_test_one_episode = xlsread('MLP_1_episode1000_10runs_测试acc.xls', 'B:B');
x=1:length(MLP_test_one_episode(:));
A = plot(x, MLP_test_one_episode,'-', 'LineWidth',1.5,'Marker','s',...
    'MarkerSize',4,'MarkerFaceColor',[0.171875,0.63671875,0.37890625],'MarkerIndices',[200 400 600 800 1000], 'color',[0.171875,0.63671875,0.37890625]);
hold on
QNN_test_one_episode = xlsread('QNN_1_episode1000_10runs_测试acc.xls', 'C:C');
x=1:length(QNN_test_one_episode(:));
B = plot(x, QNN_test_one_episode,'-', 'LineWidth',1.5,'Marker','o',...
    'MarkerSize',4,'MarkerFaceColor',[0.9453125,0.41796875,0.30078125],'MarkerIndices',[200 400 600 800 1000], 'color',[0.9453125,0.41796875,0.30078125]);
hold on
QNN_MLP_test_one_episode = xlsread('QNN_MLP_episode1000_10runs_测试acc.xls', 'B:B');
x=1:length(QNN_MLP_test_one_episode(:));
C = plot(x, QNN_MLP_test_one_episode,'-', 'LineWidth',1.5,'Marker','^',...
    'MarkerSize',4,'MarkerFaceColor',[0.05078125,0.32421875,0.61328125],'MarkerIndices',[200 400 600 800 1000], 'color',[0.05078125,0.32421875,0.61328125]);
xlabel({'Episodes';'(b)'})
ylabel('Testing accuracy')
h1=legend([A B C],'MLP', 'QNN', 'QCNN', 'Location','best');
set(sub2,'Box','on');
