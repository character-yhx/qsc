clc;
clear all;
close all;
set(gcf,'unit','centimeters','position',[1,2,40,10])



MLP_xy_train = [0.81822917	0.81322917	0.80916667	0.79041667	0.81333333	0.78958333	0.79697917	0.79979167	0.815	0.79270833];
MLP_xy_test = [0.81875	0.80708333	0.80541667	0.7875	0.80916667	0.78916667	0.78833333	0.80166667	0.81583333	0.78958333];
QNN_xy_train = [0.2715625	0.420833333	0.301979167	0.301979167	0.396458333	0.299270833	0.295520833	0.3178125	0.301979167	0.302083333];
QNN_xy_test = [0.284583333	0.422083333	0.30125	0.30125	0.3925	0.312083333	0.301666667	0.31125	0.30125	0.30125];
QNN_MLP_xy_train = [0.791041667	0.772395833	0.820729167	0.82	0.818645833	0.753854167	0.8184375	0.818854167	0.8196875	0.819166667];
QNN_MLP_xy_test = [0.78875	0.757083333	0.811666667	0.814583333	0.814583333	0.753333333	0.81625	0.819166667	0.82	0.81625];


MLP_xz_train = [0.78510417	0.7753125	0.81052083	0.7778125	0.775625	0.81135417	0.80447917	0.80947917	0.82135417	0.80541667];
MLP_xz_test = [0.76916667	0.75666667	0.8025	0.75875	0.75541667	0.80083333	0.7875	0.80458333	0.81666667	0.79583333];
QNN_xz_train = [0.30125	0.2971875	0.305208333	0.2746875	0.2965625	0.305208333	0.30125	0.305208333	0.316354167	0.2746875];
QNN_xz_test = [0.301666667	0.295416667	0.289583333	0.261666667	0.295	0.289583333	0.301666667	0.289583333	0.303333333	0.261666667];
QNN_MLP_xz_train = [0.819479167	0.819583333	0.816979167	0.821041667	0.817916667	0.822395833	0.82	0.806666667	0.82	0.819791667];
QNN_MLP_xz_test = [0.8175	0.815	0.815	0.814583333	0.815833333	0.81875	0.815416667	0.794166667	0.815833333	0.81625];

MLP_yz_train = [0.78125	0.808125	0.78	0.80822917	0.80989583	0.81458333	0.79833333	0.80427083	0.80760417	0.78166667];
MLP_yz_test = [0.79708333	0.82708333	0.8	0.82041667	0.82791667	0.84083333	0.8175	0.81875	0.82625	0.79458333];
QNN_yz_train = [0.2690625	0.299166667	0.2690625	0.305729167	0.452708333	0.435416667	0.451770833	0.2690625	0.321666667	0.305729167];
QNN_yz_test = [0.265416667	0.3075	0.265416667	0.29625	0.443333333	0.434166667	0.452916667	0.265416667	0.298333333	0.29625];
QNN_MLP_yz_train = [0.748125	0.8128125	0.821041667	0.821979167	0.730520833	0.819791667	0.819895833	0.820208333	0.773020833	0.820833333];
QNN_MLP_yz_test = [0.757916667	0.82625	0.835416667	0.837083333	0.739583333	0.835833333	0.83375	0.836666667	0.784583333	0.838333333];


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
text(3.8, 0.89, '(a)')

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


Xlabel = {'MLP','QNN','QNN-MLP'};
set(gca,'XTick',[1.5 4 6.5]);
set(gca,'XTickLabel',Xlabel);
xlabel('Methods')
ylabel('Accuracy')
axis([0 8 0 0.9]);



subplot(1,3,2)
text(3.8, 0.89, '(b)')

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


Xlabel = {'MLP','QNN','QNN-MLP'};
set(gca,'XTick',[1.5 4 6.5]);
set(gca,'XTickLabel',Xlabel);
xlabel('Methods')
ylabel('Accuracy')
axis([0 8 0 0.9]);



subplot(1,3,3)
text(3.8, 0.89, '(c)')

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


Xlabel = {'MLP','QNN','QNN-MLP'};
set(gca,'XTick',[1.5 4 6.5]);
set(gca,'XTickLabel',Xlabel);
xlabel('Methods')
ylabel('Accuracy')
axis([0 8 0 0.9]);
hl = legend({'MLP-train','MLP-test','QNN-train','QNN-test','QCNN-train','QCNN-test'},'Position',[0.306024389840499 0.0110105308774707 0.419450870145444 0.0515873003652487],...
    'NumColumns',6);








