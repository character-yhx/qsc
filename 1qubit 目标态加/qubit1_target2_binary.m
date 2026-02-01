clc;
clear all;
close all;
set(gcf,'unit','centimeters','position',[1,2,40,10])



MLP_xy_train = [0.99802083	0.99791667	0.99802083	0.99802083	0.99802083	0.99802083	0.99802083	0.99802083	0.99802083	0.99770833];
MLP_xy_test = [0.9925	0.99291667	0.9925	0.9925	0.9925	0.9925	0.9925	0.9925	0.9925	0.99291667];
QNN_xy_train = [0.98739583	0.98739583	0.98739583	0.98739583	0.98739583	0.98739583	0.98739583	0.98739583	0.98739583	0.98739583];
QNN_xy_test = [0.96791667	0.96791667	0.96791667	0.96791667	0.96791667	0.96791667	0.96791667	0.96791667	0.96791667	0.96791667];
QNN_MLP_xy_train = [0.99770833	0.99770833	0.99770833	0.99770833	0.99770833	0.99791667	0.99770833	0.99770833	0.99770833	0.99770833];
QNN_MLP_xy_test = [0.99291667	0.99291667	0.99291667	0.99291667	0.99291667	0.99291667	0.99291667	0.99291667	0.99291667	0.99291667];


MLP_xz_train = [0.998125	0.99802083	0.99802083	0.99802083	0.998125	0.99802083	0.99802083	0.99802083	0.998125	0.998125];
MLP_xz_test = [0.99291667	0.99291667	0.99291667	0.99291667	0.99291667	0.99291667	0.99291667	0.99291667	0.99291667	0.99291667];
QNN_xz_train = [0.985	0.985	0.985	0.985	0.985	0.985	0.985	0.985	0.985	0.985];
QNN_xz_test = [0.96166667	0.96166667	0.96166667	0.96166667	0.96166667	0.96166667	0.96166667	0.96166667	0.96166667	0.96166667];
QNN_MLP_xz_train = [0.9984375	0.9984375	0.9984375	0.5	0.99854167	0.99822917	0.99854167	0.9984375	0.99833333	0.9984375];
QNN_MLP_xz_test = [0.99375	0.99375	0.99375	0.5	0.99375	0.99291667	0.99375	0.99375	0.99291667	0.99375];

MLP_yz_train = [0.54677083	0.5890625	0.54427083	0.57458333	0.6003125	0.54364583	0.5903125	0.54395833	0.5440625	0.590625];
MLP_yz_test = [0.36083333	0.17583333	0.37166667	0.23166667	0.13208333	0.36625	0.1675	0.36416667	0.36416667	0.15958333];
QNN_yz_train = [0.54760417	0.54760417	0.505	0.5475	0.52041667	0.54802083	0.5478125	0.55354167	0.548125	0.54854167];
QNN_yz_test = [0.325	0.32916667	0.50541667	0.32458333	0.48666667	0.325	0.32875	0.28541667	0.32583333	0.3275];
QNN_MLP_yz_train = [0.6078125	0.60916667	0.6078125	0.544375	0.60760417	0.53229167	0.59802083	0.53645833	0.60916667	0.56197917];
QNN_MLP_yz_test = [0.08	0.07833333	0.08458333	0.32375	0.0825	0.42875	0.10208333	0.38708333	0.07666667	0.30416667];


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
text(3.8, 1.088, '(a)')

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
axis([0 8 0 1.1]);



subplot(1,3,2)
text(3.8, 1.138, '(b)')

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
axis([0 8 0 1.15]);



subplot(1,3,3)
text(3.8, 0.692, '(c)')

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
axis([0 8 0 0.7]);
hl = legend({'MLP-train','MLP-test','QNN-train','QNN-test','QCNN-train','QCNN-test'},'Position',[0.306024389840499 0.0110105308774707 0.419450870145444 0.0515873003652487],...
    'NumColumns',6);









