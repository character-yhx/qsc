clc;
clear all;
close all;
set(gcf,'unit','centimeters','position',[1,2,40,10])



MLP_xy_train = [0.71541667	0.7175	0.69635417	0.7075	0.71197917	0.7028125	0.710625	0.715625	0.72166667	0.713125];
MLP_xy_test = [0.79166667	0.79416667	0.76458333	0.78958333	0.78416667	0.78	0.78041667	0.79166667	0.79791667	0.79083333];
QNN_xy_train = [0.5528125	0.497708333	0.519895833	0.513333333	0.543333333	0.5240625	0.5128125	0.552916667	0.5490625	0.516041667];
QNN_xy_test = [0.52625	0.516666667	0.519583333	0.490833333	0.51625	0.575833333	0.523333333	0.52875	0.520833333	0.51875];
QNN_MLP_xy_train = [0.643229167	0.643333333	0.6734375	0.6846875	0.687083333	0.639166667	0.639479167	0.641354167	0.6903125	0.5665625];
QNN_MLP_xy_test = [0.806666667	0.80625	0.710416667	0.762916667	0.752916667	0.8275	0.825	0.79375	0.757083333	0.660833333];


MLP_xz_train = [0.99666667	0.9965625	0.99677083	0.9965625	0.99666667	0.99666667	0.9965625	0.9965625	0.99677083	0.99666667];
MLP_xz_test = [0.98166667	0.98125	0.98166667	0.98041667	0.98041667	0.98125	0.98083333	0.98041667	0.98125	0.98083333];
QNN_xz_train = [0.837395833	0.837395833	0.837395833	0.837395833	0.837395833	0.837395833	0.837395833	0.837395833	0.837395833	0.837395833];
QNN_xz_test = [0.77125	0.77125	0.77125	0.77125	0.77125	0.77125	0.77125	0.77125	0.77125	0.77125];
QNN_MLP_xz_train = [0.975	0.9809375	0.968958333	0.975208333	0.981354167	0.975416667	0.9753125	0.980729167	0.974791667	0.974791667];
QNN_MLP_xz_test = [0.954166667	0.963333333	0.941666667	0.955833333	0.9625	0.954583333	0.954166667	0.96	0.954166667	0.954583333];

MLP_yz_train = [0.99625	0.99604167	0.99604167	0.99604167	0.99614583	0.99604167	0.9959375	0.99583333	0.99604167	0.9959375];
MLP_yz_test = [0.98125	0.98125	0.98125	0.98166667	0.98083333	0.98125	0.98208333	0.98	0.98208333	0.98041667];
QNN_yz_train = [0.837604167	0.838229167	0.838229167	0.838229167	0.838229167	0.838229167	0.838229167	0.838229167	0.838229167	0.838229167];
QNN_yz_test = [0.772083333	0.7725	0.7725	0.7725	0.7725	0.7725	0.7725	0.7725	0.7725	0.7725];
QNN_MLP_yz_train = [0.982604167	0.9815625	0.970416667	0.9740625	0.983020833	0.980520833	0.9740625	0.974583333	0.982604167	0.974270833];
QNN_MLP_yz_test = [0.970416667	0.96875	0.942083333	0.96125	0.97	0.967916667	0.96125	0.96	0.969583333	0.945833333];


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
text(3.8, 0.892, '(a)')

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
axis([0 8 0 0.9]);



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








