clc;
clear all;
close all;
set(gcf,'unit','centimeters','position',[1,2,40,10])



MLP_xy_train = [0.99854167	0.99833333	0.9984375	0.99791667	0.998125	0.99822917	0.9984375	0.99822917	0.97614583	0.99833333];
MLP_xy_test = [0.99791667	0.9975	0.9975	0.99708333	0.99708333	0.99791667	0.99791667	0.99666667	0.97916667	0.9975];
QNN_xy_train = [0.25	0.25	0.48666667	0.25	0.06552083	0.48666667	0.25	0.06552083	0.25	0.25];
QNN_xy_test = [0.25	0.25	0.48625	0.25	0.07041667	0.48625	0.25	0.07041667	0.25	0.25];
QNN_MLP_xy_train = [0.89177083	0.78208333	0.97395833	0.98208333	0.88864583	0.77677083	0.96604167	0.73666667	0.9171875	0.91833333];
QNN_MLP_xy_test = [0.90916667	0.77541667	0.97875	0.99083333	0.90666667	0.76958333	0.9675	0.75666667	0.93208333	0.92958333];


MLP_xz_train = [0.99625	0.9953125	0.99864583	0.99875	0.99729167	0.99854167	0.9984375	0.99833333	0.99833333	0.9984375];
MLP_xz_test = [0.99625	0.99625	0.99875	0.99875	0.9975	0.99875	0.99833333	0.99833333	0.99833333	0.99833333];
QNN_xz_train = [0.24916667	0.48666667	0.25	0.25	0.48666667	0.25	0.25	0.5	0.25	0.48666667];
QNN_xz_test = [0.24916667	0.48625	0.25	0.25	0.48625	0.25	0.25	0.5	0.25	0.48625];
QNN_MLP_xz_train = [0.83916667	0.91125	0.97322917	0.93958333	0.97354167	0.96416667	0.89739583	0.95760417	0.79291667	0.9421875];
QNN_MLP_xz_test = [0.82	0.92166667	0.97458333	0.95041667	0.9725	0.975	0.91291667	0.955	0.77291667	0.94125];

MLP_yz_train = [0.4778125	0.26375	0.3315625	0.26520833	0.44479167	0.43760417	0.3321875	0.3025	0.33864583	0.2659375];
MLP_yz_test = [0.48916667	0.26458333	0.30458333	0.26791667	0.44291667	0.45208333	0.32833333	0.295	0.34875	0.26583333];
QNN_yz_train = [0.2725	0.2765625	0.27541667	0.25802083	0.25802083	0.24989583	0.28458333	0.27145833	0.28229167	0.32947917];
QNN_yz_test = [0.27875	0.27416667	0.27291667	0.25625	0.24958333	0.25	0.27916667	0.29	0.27833333	0.32916667];
QNN_MLP_yz_train = [0.49	0.4590625	0.483125	0.46739583	0.49020833	0.45604167	0.37260417	0.42666667	0.47239583	0.4615625];
QNN_MLP_yz_test = [0.46666667	0.46208333	0.47416667	0.46791667	0.50791667	0.46583333	0.36375	0.40583333	0.47791667	0.46333333];


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
text(3.8, 1.088, '(b)')

X = [1,2,3.5,4.5,6,7];
Y_final = [MLP_xz_train_mean,MLP_xz_test_mean,QNN_xz_train_mean,QNN_xz_test_mean,QNN_MLP_xz_train_mean,QNN_MLP_xz_test_mean];
color = [0.671875,0.80078125,0.43359375;0.171875,0.63671875,0.37890625;0.96484375,0.71484375,0.6171875;0.9453125,0.41796875,0.30078125;0.44140625,0.67578125,0.8125;0.05078125,0.32421875,0.61328125;];
edgecolor = [0.671875,0.80078125,0.43359375;0.171875,0.63671875,0.37890625;0.96484375,0.71484375,0.6171875;0.9453125,0.41796875,0.30078125;0.44140625,0.67578125,0.8125;0.05078125,0.32421875,0.61328125;];

hold o             
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
text(3.8, 0.593, '(c)')

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
axis([0 8 0 0.6]);
hl = legend({'MLP-train','MLP-test','QNN-train','QNN-test','QCNN-train','QCNN-test'},'Position',[0.306024389840499 0.0110105308774707 0.419450870145444 0.0515873003652487],...
    'NumColumns',6);








