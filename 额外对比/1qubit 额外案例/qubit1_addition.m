clc;
clear all;
close all;



MLP_train = [1	1	1	1	1	1	1	1	1	1];
MLP_test = [1	1	1	1	1	1	1	1	1	1];
QNN_train = [1	1	1	1	1	1	1	1	1	1];
QNN_test = [1	1	1	1	1	1	1	1	1	1];
QNN_MLP_train = [1	1	1	1	1	1	1	1	1	1];
QNN_MLP_test = [1	1	1	1	1	1	1	1	1	1];


MLP_train_mean = mean(MLP_train);
MLP_test_mean = mean(MLP_test);
QNN_train_mean = mean(QNN_train);
QNN_test_mean = mean(QNN_test);
QNN_MLP_train_mean = mean(QNN_MLP_train);
QNN_MLP_test_mean = mean(QNN_MLP_test);


MLP_train_std = std(MLP_train);
MLP_test_std = std(MLP_test);
QNN_train_std = std(QNN_train);
QNN_test_std = std(QNN_test);
QNN_MLP_train_std = std(QNN_MLP_train);
QNN_MLP_test_std = std(QNN_MLP_test);



X = [1,2,3.5,4.5,6,7];
Y_final = [MLP_train_mean,MLP_test_mean,QNN_train_mean,QNN_test_mean,QNN_MLP_train_mean,QNN_MLP_test_mean];
color = [0.671875,0.80078125,0.43359375;0.171875,0.63671875,0.37890625;0.96484375,0.71484375,0.6171875;0.9453125,0.41796875,0.30078125;0.44140625,0.67578125,0.8125;0.05078125,0.32421875,0.61328125;];
edgecolor = [0.671875,0.80078125,0.43359375;0.171875,0.63671875,0.37890625;0.96484375,0.71484375,0.6171875;0.9453125,0.41796875,0.30078125;0.44140625,0.67578125,0.8125;0.05078125,0.32421875,0.61328125;];

hold on             
for i = 1:6
    b = bar(X(i),Y_final(i),0.8,'stacked');  
    set(b(1),'facecolor',color(i,:),'EdgeColor',edgecolor(i,:))
    alpha(0.75)
end

hold on
x = 1;
y = MLP_train_mean;
err = MLP_train_std;
e=errorbar(x',y',err','color',[0.671875,0.80078125,0.43359375]);
x = 2;
y = MLP_test_mean;
err = MLP_test_std;
e=errorbar(x',y',err','color',[0.171875,0.63671875,0.37890625]);

x = 3.5;
y = QNN_train_mean;
err = QNN_train_std;
e=errorbar(x',y',err','color',[0.96484375,0.71484375,0.6171875]);
x = 4.5;
y = QNN_test_mean;
err = QNN_test_std;
e=errorbar(x',y',err','color',[0.9453125,0.41796875,0.30078125]);

x = 6;
y = QNN_MLP_train_mean;
err = QNN_MLP_train_std;
e=errorbar(x',y',err','color',[0.44140625,0.67578125,0.8125]);
x = 7;
y = QNN_MLP_test_mean;
err = QNN_MLP_test_std;
e=errorbar(x',y',err','color',[0.05078125,0.32421875,0.61328125]);


Xlabel = {'MLP','QNN','QCNN'};
set(gca,'XTick',[1.5 4 6.5]);
set(gca,'XTickLabel',Xlabel);
xlabel('Methods')
ylabel('Accuracy')
axis([0 8 0 1]);
hl = legend({'MLP-train','MLP-test','QNN-train','QNN-test','QCNN-train','QCNN-test'}, 'Location','Eastoutside',...
    'NumColumns',1);











