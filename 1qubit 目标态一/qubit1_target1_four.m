clc;
clear all;
close all;
set(gcf,'unit','centimeters','position',[1,2,40,10])



MLP_xy_train = [0.26458333,0.4421875,0.36083333,0.49416667,0.34552083,0.33510417,0.33416667,0.4409375,0.30697917,0.3353125];
MLP_xy_test = [0.26458333,0.42583333,0.32958333,0.46541667,0.32458333,0.31708333,0.31333333,0.41458333,0.28958333,0.33041667];
QNN_xy_train = [0.29927083,0.33,0.29895833,0.24958333,0.29822917,0.24947917,0.29833333,0.29854167,0.31666667,0.32333333];
QNN_xy_test = [0.305,0.33208333,0.30416667,0.25,0.30291667,0.25,0.30291667,0.30291667,0.31833333,0.3175];
QNN_MLP_xy_train = [0.38885417,0.48010417,0.48302083,0.48864583,0.34979167,0.36583333,0.396875,0.47625,0.488125,0.48583333];
QNN_MLP_xy_test = [0.38458333,0.47458333,0.46375,0.47,0.35166667,0.365,0.3975,0.45791667,0.47375,0.46916667];


MLP_xz_train = [0.99739583,0.99625,0.99697917,0.99760417,0.99739583,0.9978125,0.976875,0.99739583,0.99760417,0.99791667];
MLP_xz_test = [0.99708333,0.99666667,0.99666667,0.99666667,0.99666667,0.99666667,0.97875,0.99666667,0.9975,0.99666667];
QNN_xz_train = [0.5,0.32770833,0.5,0.5,0.5,0.5,0.35739583,0.49989583,0.5,0.5];
QNN_xz_test = [0.5,0.31375,0.5,0.5,0.5,0.5,0.355,0.5,0.5,0.5];
QNN_MLP_xz_train = [0.91260417,0.92291667,0.91458333,0.91239583,0.91625,0.25,0.9103125,0.9175,0.91791667,0.9328125];
QNN_MLP_xz_test = [0.91333333,0.92708333,0.92,0.91416667,0.91333333,0.25,0.925,0.91708333,0.91708333,0.9325];

MLP_yz_train = [0.99833333,0.99395833,0.9946875,0.996875,0.99635417,0.99677083,0.99625,0.99645833,0.99635417,0.9940625];
MLP_yz_test = [0.9975,0.995,0.99583333,0.9975,0.9975,0.9975,0.9975,0.9975,0.9975,0.995];
QNN_yz_train = [0.3271875,0.32739583,0.5,0.32739583,0.3271875,0.32739583,0.3275,0.32739583,0.32739583,0.36197917];
QNN_yz_test = [0.31375,0.31375,0.5,0.31375,0.31375,0.31375,0.31375,0.31375,0.31375,0.35666667];
QNN_MLP_yz_train = [0.91072917,0.93479167,0.94135417,0.9146875,0.25,0.91104167,0.96270833,0.92583333,0.910625,0.9146875];
QNN_MLP_yz_test = [0.91958333,0.94291667,0.95,0.92708333,0.25,0.92375,0.96125,0.9375,0.92083333,0.92208333];


MLP_xy_train_mean = mean(MLP_xy_train);
MLP_xy_test_mean = mean(MLP_xy_test);
QNN_xy_train_mean = mean(QNN_xy_train);
QNN_xy_test_mean = mean(QNN_xy_test);
QNN_MLP_xy_train_mean = mean(QNN_MLP_xy_train);
QNN_MLP_xy_test_mean = mean(QNN_MLP_xy_test);

MLP_xz_train_mean = mean(MLP_xz_train);
MLP_xz_test_mean = mean(MLP_xz_test);
QNN_xz_train_mean = mean(QNN_xz_train);
QNN_xz_test_mean = mean(QNN_xz_test);
QNN_MLP_xz_train_mean = mean(QNN_MLP_xz_train);
QNN_MLP_xz_test_mean = mean(QNN_MLP_xz_test);

MLP_yz_train_mean = mean(MLP_yz_train);
MLP_yz_test_mean = mean(MLP_yz_test);
QNN_yz_train_mean = mean(QNN_yz_train);
QNN_yz_test_mean = mean(QNN_yz_test);
QNN_MLP_yz_train_mean = mean(QNN_MLP_yz_train);
QNN_MLP_yz_test_mean = mean(QNN_MLP_yz_test);


MLP_xy_train_std = std(MLP_xy_train);
MLP_xy_test_std = std(MLP_xy_test);
QNN_xy_train_std = std(QNN_xy_train);
QNN_xy_test_std = std(QNN_xy_test);
QNN_MLP_xy_train_std = std(QNN_MLP_xy_train);
QNN_MLP_xy_test_std = std(QNN_MLP_xy_test);

MLP_xz_train_std = std(MLP_xz_train);
MLP_xz_test_std = std(MLP_xz_test);
QNN_xz_train_std = std(QNN_xz_train);
QNN_xz_test_std = std(QNN_xz_test);
QNN_MLP_xz_train_std = std(QNN_MLP_xz_train);
QNN_MLP_xz_test_std = std(QNN_MLP_xz_test);

MLP_yz_train_std = std(MLP_yz_train);
MLP_yz_test_std = std(MLP_yz_test);
QNN_yz_train_std = std(QNN_yz_train);
QNN_yz_test_std = std(QNN_yz_test);
QNN_MLP_yz_train_std = std(QNN_MLP_yz_train);
QNN_MLP_yz_test_std = std(QNN_MLP_yz_test);



subplot(1,3,1)
text(3.8, 0.593, '(a)')

X = [1,2,3.5,4.5,6,7];
Y_final = [MLP_xy_train_mean,MLP_xy_test_mean,QNN_xy_train_mean,QNN_xy_test_mean,QNN_MLP_xy_train_mean,QNN_MLP_xy_test_mean];
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
y = MLP_xy_train_mean;
err = MLP_xy_train_std;
e=errorbar(x',y',err','color',[0.671875,0.80078125,0.43359375]);
x = 2;
y = MLP_xy_test_mean;
err = MLP_xy_test_std;
e=errorbar(x',y',err','color',[0.171875,0.63671875,0.37890625]);

x = 3.5;
y = QNN_xy_train_mean;
err = QNN_xy_train_std;
e=errorbar(x',y',err','color',[0.96484375,0.71484375,0.6171875]);
x = 4.5;
y = QNN_xy_test_mean;
err = QNN_xy_test_std;
e=errorbar(x',y',err','color',[0.9453125,0.41796875,0.30078125]);

x = 6;
y = QNN_MLP_xy_train_mean;
err = QNN_MLP_xy_train_std;
e=errorbar(x',y',err','color',[0.44140625,0.67578125,0.8125]);
x = 7;
y = QNN_MLP_xy_test_mean;
err = QNN_MLP_xy_test_std;
e=errorbar(x',y',err','color',[0.05078125,0.32421875,0.61328125]);


Xlabel = {'MLP','QNN','QCNN'};
set(gca,'XTick',[1.5 4 6.5]);
set(gca,'XTickLabel',Xlabel);
xlabel('Methods')
ylabel('Accuracy')
axis([0 8 0 0.6]);



subplot(1,3,2)
text(3.8, 1.088, '(b)')

X = [1,2,3.5,4.5,6,7];
Y_final = [MLP_xz_train_mean,MLP_xz_test_mean,QNN_xz_train_mean,QNN_xz_test_mean,QNN_MLP_xz_train_mean,QNN_MLP_xz_test_mean];
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
y = MLP_xz_train_mean;
err = MLP_xz_train_std;
e=errorbar(x',y',err','color',[0.671875,0.80078125,0.43359375]);
x = 2;
y = MLP_xz_test_mean;
err = MLP_xz_test_std;
e=errorbar(x',y',err','color',[0.171875,0.63671875,0.37890625]);

x = 3.5;
y = QNN_xz_train_mean;
err = QNN_xz_train_std;
e=errorbar(x',y',err','color',[0.96484375,0.71484375,0.6171875]);
x = 4.5;
y = QNN_xz_test_mean;
err = QNN_xz_test_std;
e=errorbar(x',y',err','color',[0.9453125,0.41796875,0.30078125]);

x = 6;
y = QNN_MLP_xz_train_mean;
err = QNN_MLP_xz_train_std;
e=errorbar(x',y',err','color',[0.44140625,0.67578125,0.8125]);
x = 7;
y = QNN_MLP_xz_test_mean;
err = QNN_MLP_xz_test_std;
e=errorbar(x',y',err','color',[0.05078125,0.32421875,0.61328125]);


Xlabel = {'MLP','QNN','QCNN'};
set(gca,'XTick',[1.5 4 6.5]);
set(gca,'XTickLabel',Xlabel);
xlabel('Methods')
ylabel('Accuracy')
axis([0 8 0 1.1]);



subplot(1,3,3)
text(3.8, 1.088, '(c)')

X = [1,2,3.5,4.5,6,7];
Y_final = [MLP_yz_train_mean,MLP_yz_test_mean,QNN_yz_train_mean,QNN_yz_test_mean,QNN_MLP_yz_train_mean,QNN_MLP_yz_test_mean];
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
y = MLP_yz_train_mean;
err = MLP_yz_train_std;
e=errorbar(x',y',err','color',[0.671875,0.80078125,0.43359375]);
x = 2;
y = MLP_yz_test_mean;
err = MLP_yz_test_std;
e=errorbar(x',y',err','color',[0.171875,0.63671875,0.37890625]);

x = 3.5;
y = QNN_yz_train_mean;
err = QNN_yz_train_std;
e=errorbar(x',y',err','color',[0.96484375,0.71484375,0.6171875]);
x = 4.5;
y = QNN_yz_test_mean;
err = QNN_yz_test_std;
e=errorbar(x',y',err','color',[0.9453125,0.41796875,0.30078125]);

x = 6;
y = QNN_MLP_yz_train_mean;
err = QNN_MLP_yz_train_std;
e=errorbar(x',y',err','color',[0.44140625,0.67578125,0.8125]);
x = 7;
y = QNN_MLP_yz_test_mean;
err = QNN_MLP_yz_test_std;
e=errorbar(x',y',err','color',[0.05078125,0.32421875,0.61328125]);


Xlabel = {'MLP','QNN','QCNN'};
set(gca,'XTick',[1.5 4 6.5]);
set(gca,'XTickLabel',Xlabel);
xlabel('Methods')
ylabel('Accuracy')
axis([0 8 0 1.1]);
hl = legend({'MLP-train','MLP-test','QNN-train','QNN-test','QCNN-train','QCNN-test'},'Position',[0.306024389840499 0.0110105308774707 0.419450870145444 0.0515873003652487],...
    'NumColumns',6);








