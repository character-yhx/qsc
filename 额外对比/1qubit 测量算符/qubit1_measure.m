clc;
clear all;
close all;
set(gcf,'unit','centimeters','position',[1,2,45,10])



MLP11_train = [0.26260417	0.34666667	0.33572917	0.26239583	0.3465625	0.3446875	0.263125	0.34135417	0.33416667	0.25489583];
MLP11_test = [0.26333333	0.33708333	0.33041667	0.26208333	0.34041667	0.33791667	0.26166667	0.33958333	0.31958333	0.26666667];
MLP12_train = [0.24958333	0.29583333	0.34052083	0.29583333	0.24770833	0.24645833	0.2521875	0.34145833	0.29635417	0.25];
MLP12_test = [0.25208333	0.29166667	0.33208333	0.29041667	0.25083333	0.24625	0.24666667	0.33166667	0.29083333	0.25];
MLP13_train = [0.99708333	0.9971875	0.97677083	0.99708333	0.97645833	0.97677083	0.97802083	0.99864583	0.97677083	0.9971875];
MLP13_test = [0.9975	0.99708333	0.97958333	0.9975	0.98416667	0.97958333	0.98541667	0.9975	0.97958333	0.9975];
MLP14_train = [0.34916667	0.48072917	0.35135417	0.30197917	0.3559375	0.293125	0.44583333	0.35604167	0.33541667	0.44760417];
MLP14_test = [0.34791667	0.46291667	0.34083333	0.29875	0.33916667	0.2925	0.42083333	0.33708333	0.34041667	0.42208333];
MLP15_train = [0.99364583	0.99114583	0.9978125	0.99770833	0.9975	0.99760417	0.99479167	0.9975	0.99364583	0.99770833];
MLP15_test = [0.99541667	0.9925	0.99708333	0.9975	0.9975	0.99708333	0.99541667	0.99708333	0.99541667	0.99708333];
MLP16_train = [0.9959375	0.9921875	0.99625	0.99666667	0.99645833	0.99635417	0.9959375	0.97729167	0.99635417	0.9965625];
MLP16_test = [0.995	0.99416667	0.99666667	0.99791667	0.9975	0.9975	0.9975	0.985	0.9975	0.9975];
MLP17_train = [0.99708333	0.9775	0.99625	0.99729167	0.99739583	0.99625	0.9975	0.99697917	0.99760417	0.99739583];
MLP17_test = [0.99708333	0.98291667	0.9975	0.9975	0.99708333	0.99708333	0.99666667	0.99708333	0.9975	0.99708333];

MLP21_train = [0.97020833	0.99395833	0.99458333	0.97052083	0.99833333	0.99833333	0.99572917	0.97020833	0.99833333	0.99833333];
MLP21_test = [0.97083333	0.99625	0.99625	0.97166667	0.99875	0.99875	0.99625	0.97083333	0.99875	0.99875];
MLP22_train = [0.33979167	0.25	0.29510417	0.34135417	0.249375	0.3278125	0.34197917	0.33625	0.34145833	0.2509375];
MLP22_test = [0.34958333	0.25	0.3	0.34833333	0.25333333	0.33583333	0.34958333	0.33666667	0.34791667	0.24833333];
MLP23_train = [0.340625	0.25	0.29125	0.33708333	0.33739583	0.2675	0.33135417	0.3	0.3490625	0.25927083];
MLP23_test = [0.29166667	0.25	0.27125	0.30958333	0.30708333	0.26875	0.30625	0.29125	0.31125	0.25166667];
MLP24_train = [0.99822917	0.9984375	0.995625	0.998125	0.99833333	0.99833333	0.96895833	0.96864583	0.994375	0.99833333];
MLP24_test = [0.99833333	0.99708333	0.99583333	0.99791667	0.99708333	0.99708333	0.97166667	0.97583333	0.99625	0.99708333];
MLP25_train = [0.99833333	0.99864583	0.99833333	0.99697917	0.97635417	0.98708333	0.99802083	0.99833333	0.99072917	0.97697917];
MLP25_test = [0.99833333	0.99875	0.99833333	0.99416667	0.98	0.99041667	0.99708333	0.99833333	0.99208333	0.98];
MLP26_train = [0.3434375	0.26541667	0.34072917	0.331875	0.43875	0.2646875	0.4346875	0.29239583	0.33760417	0.4309375];
MLP26_test = [0.33416667	0.2675	0.29833333	0.305	0.43916667	0.26333333	0.4475	0.30041667	0.3425	0.46375];
MLP27_train = [0.99791667	0.99791667	0.99760417	0.99572917	0.99791667	0.99760417	0.99520833	0.99364583	0.9978125	0.99791667];
MLP27_test = [0.99708333	0.99708333	0.99791667	0.99416667	0.99708333	0.99666667	0.99625	0.99458333	0.99708333	0.99708333];


MLP11_train_mean = mean(MLP11_train);
MLP11_test_mean = mean(MLP11_test);
MLP12_train_mean = mean(MLP12_train);
MLP12_test_mean = mean(MLP12_test);
MLP13_train_mean = mean(MLP13_train);
MLP13_test_mean = mean(MLP13_test);
MLP14_train_mean = mean(MLP14_train);
MLP14_test_mean = mean(MLP14_test);
MLP15_train_mean = mean(MLP15_train);
MLP15_test_mean = mean(MLP15_test);
MLP16_train_mean = mean(MLP16_train);
MLP16_test_mean = mean(MLP16_test);
MLP17_train_mean = mean(MLP17_train);
MLP17_test_mean = mean(MLP17_test);

MLP21_train_mean = mean(MLP21_train);
MLP21_test_mean = mean(MLP21_test);
MLP22_train_mean = mean(MLP22_train);
MLP22_test_mean = mean(MLP22_test);
MLP23_train_mean = mean(MLP23_train);
MLP23_test_mean = mean(MLP23_test);
MLP24_train_mean = mean(MLP24_train);
MLP24_test_mean = mean(MLP24_test);
MLP25_train_mean = mean(MLP25_train);
MLP25_test_mean = mean(MLP25_test);
MLP26_train_mean = mean(MLP26_train);
MLP26_test_mean = mean(MLP26_test);
MLP27_train_mean = mean(MLP27_train);
MLP27_test_mean = mean(MLP27_test);


MLP11_train_std = std(MLP11_train);
MLP11_test_std = std(MLP11_test);
MLP12_train_std = std(MLP12_train);
MLP12_test_std = std(MLP12_test);
MLP13_train_std = std(MLP13_train);
MLP13_test_std = std(MLP13_test);
MLP14_train_std = std(MLP14_train);
MLP14_test_std = std(MLP14_test);
MLP15_train_std = std(MLP15_train);
MLP15_test_std = std(MLP15_test);
MLP16_train_std = std(MLP16_train);
MLP16_test_std = std(MLP16_test);
MLP17_train_std = std(MLP17_train);
MLP17_test_std = std(MLP17_test);

MLP21_train_std = std(MLP21_train);
MLP21_test_std = std(MLP21_test);
MLP22_train_std = std(MLP22_train);
MLP22_test_std = std(MLP22_test);
MLP23_train_std = std(MLP23_train);
MLP23_test_std = std(MLP23_test);
MLP24_train_std = std(MLP24_train);
MLP24_test_std = std(MLP24_test);
MLP25_train_std = std(MLP25_train);
MLP25_test_std = std(MLP25_test);
MLP26_train_std = std(MLP26_train);
MLP26_test_std = std(MLP26_test);
MLP27_train_std = std(MLP27_train);
MLP27_test_std = std(MLP27_test);



subplot(1,2,1)
text(8.5, 1.045, '(a)')

X = [1,2,...
    3.5,4.5,...
    6,7,...
    8.5,9.5,...
    11,12,...
    13.5,14.5,...
    16,17];
Y_final = [MLP11_train_mean,MLP11_test_mean,...
    MLP12_train_mean,MLP12_test_mean,...
    MLP13_train_mean,MLP13_test_mean,...
    MLP14_train_mean,MLP14_test_mean,...
    MLP15_train_mean,MLP15_test_mean,...
    MLP16_train_mean,MLP16_test_mean,...
    MLP17_train_mean,MLP17_test_mean,];
color = [0.671875,0.80078125,0.43359375;0.171875,0.63671875,0.37890625;
    0.96484375,0.71484375,0.6171875;0.9453125,0.41796875,0.30078125;
    0.44140625,0.67578125,0.8125;0.05078125,0.32421875,0.61328125;
    255/255,211/255,155/255;139/255,101/255,8/255;
    255/255,225/255,255/255;139/255,123/255,139/255;
    145/255,44/255,238/255;85/255,26/255,139/255;
    202/255,225/255,255/255;162/255,181/255,205/255;];
edgecolor = [0.671875,0.80078125,0.43359375;0.171875,0.63671875,0.37890625;
    0.96484375,0.71484375,0.6171875;0.9453125,0.41796875,0.30078125;
    0.44140625,0.67578125,0.8125;0.05078125,0.32421875,0.61328125;
    255/255,211/255,155/255;139/255,101/255,8/255;
    255/255,225/255,255/255;139/255,123/255,139/255;
    145/255,44/255,238/255;85/255,26/255,139/255;
    202/255,225/255,255/255;162/255,181/255,205/255;];

hold on             
for i = 1:14
    b = bar(X(i),Y_final(i),0.8,'stacked');  
    set(b(1),'facecolor',color(i,:),'EdgeColor',edgecolor(i,:))
    alpha(0.75)
end

hold on
x = 1;
y = MLP11_train_mean;
err = MLP11_train_std;
e=errorbar(x',y',err','color',[0.671875,0.80078125,0.43359375]);
x = 2;
y = MLP11_test_mean;
err = MLP11_test_std;
e=errorbar(x',y',err','color',[0.171875,0.63671875,0.37890625]);

x = 3.5;
y = MLP12_train_mean;
err = MLP12_train_std;
e=errorbar(x',y',err','color',[0.96484375,0.71484375,0.6171875]);
x = 4.5;
y = MLP12_test_mean;
err = MLP12_test_std;
e=errorbar(x',y',err','color',[0.9453125,0.41796875,0.30078125]);

x = 6;
y = MLP13_train_mean;
err = MLP13_train_std;
e=errorbar(x',y',err','color',[0.44140625,0.67578125,0.8125]);
x = 7;
y = MLP13_test_mean;
err = MLP13_test_std;
e=errorbar(x',y',err','color',[0.05078125,0.32421875,0.61328125]);

x = 8.5;
y = MLP14_train_mean;
err = MLP14_train_std;
e=errorbar(x',y',err','color',[255/255,211/255,155/255]);
x = 9.5;
y = MLP14_test_mean;
err = MLP14_test_std;
e=errorbar(x',y',err','color',[139/255,101/255,8/255]);

x = 11;
y = MLP15_train_mean;
err = MLP15_train_std;
e=errorbar(x',y',err','color',[255/255,225/255,255/255]);
x = 12;
y = MLP15_test_mean;
err = MLP15_test_std;
e=errorbar(x',y',err','color',[139/255,123/255,139/255]);

x = 13.5;
y = MLP16_train_mean;
err = MLP16_train_std;
e=errorbar(x',y',err','color',[145/255,44/255,238/255]);
x = 14.5;
y = MLP16_test_mean;
err = MLP16_test_std;
e=errorbar(x',y',err','color',[85/255,26/255,139/255]);

x = 16;
y = MLP17_train_mean;
err = MLP17_train_std;
e=errorbar(x',y',err','color',[202/255,225/255,255/255]);
x = 17;
y = MLP17_test_mean;
err = MLP17_test_std;
e=errorbar(x',y',err','color',[162/255,181/255,205/255]);


Xlabel = {'MLP^1_1','MLP^1_2','MLP^1_3','MLP^1_4','MLP^1_5','MLP^1_6','MLP^1_7'};
set(gca,'XTick',[1.5 4 6.5 9 11.5 14 16.5]);
set(gca,'XTickLabel',Xlabel);
xlabel('Methods')
ylabel('Accuracy')
axis([0 18 0 1.06]);
hl = legend({'MLP^1_1-train','MLP^1_1-test','MLP^1_2-train','MLP^1_2-test','MLP^1_3-train','MLP^1_3-test','MLP^1_4-train','MLP^1_4-test','MLP^1_5-train','MLP^1_5-test','MLP^1_6-train','MLP^1_6-test','MLP^1_7-train','MLP^1_7-test'}, 'Location','Eastoutside',...
    'NumColumns',2);
set(gca,'YTick',[0 0.2 0.4 0.6 0.8 1]);



subplot(1,2,2)
text(8.5, 1.045, '(b)')

X = [1,2,...
    3.5,4.5,...
    6,7,...
    8.5,9.5,...
    11,12,...
    13.5,14.5,...
    16,17];
Y_final = [MLP21_train_mean,MLP21_test_mean,...
    MLP22_train_mean,MLP22_test_mean,...
    MLP23_train_mean,MLP23_test_mean,...
    MLP24_train_mean,MLP24_test_mean,...
    MLP25_train_mean,MLP25_test_mean,...
    MLP26_train_mean,MLP26_test_mean,...
    MLP27_train_mean,MLP27_test_mean,];
color = [0.671875,0.80078125,0.43359375;0.171875,0.63671875,0.37890625;
    0.96484375,0.71484375,0.6171875;0.9453125,0.41796875,0.30078125;
    0.44140625,0.67578125,0.8125;0.05078125,0.32421875,0.61328125;
    255/255,211/255,155/255;139/255,101/255,8/255;
    255/255,225/255,255/255;139/255,123/255,139/255;
    145/255,44/255,238/255;85/255,26/255,139/255;
    202/255,225/255,255/255;162/255,181/255,205/255;];
edgecolor = [0.671875,0.80078125,0.43359375;0.171875,0.63671875,0.37890625;
    0.96484375,0.71484375,0.6171875;0.9453125,0.41796875,0.30078125;
    0.44140625,0.67578125,0.8125;0.05078125,0.32421875,0.61328125;
    255/255,211/255,155/255;139/255,101/255,8/255;
    255/255,225/255,255/255;139/255,123/255,139/255;
    145/255,44/255,238/255;85/255,26/255,139/255;
    202/255,225/255,255/255;162/255,181/255,205/255;];

hold on            
for i = 1:14
    b = bar(X(i),Y_final(i),0.8,'stacked');  
    set(b(1),'facecolor',color(i,:),'EdgeColor',edgecolor(i,:))
    alpha(0.75)
end

hold on
x = 1;
y = MLP21_train_mean;
err = MLP21_train_std;
e=errorbar(x',y',err','color',[0.671875,0.80078125,0.43359375]);
x = 2;
y = MLP21_test_mean;
err = MLP21_test_std;
e=errorbar(x',y',err','color',[0.171875,0.63671875,0.37890625]);

x = 3.5;
y = MLP22_train_mean;
err = MLP22_train_std;
e=errorbar(x',y',err','color',[0.96484375,0.71484375,0.6171875]);
x = 4.5;
y = MLP22_test_mean;
err = MLP22_test_std;
e=errorbar(x',y',err','color',[0.9453125,0.41796875,0.30078125]);

x = 6;
y = MLP23_train_mean;
err = MLP23_train_std;
e=errorbar(x',y',err','color',[0.44140625,0.67578125,0.8125]);
x = 7;
y = MLP23_test_mean;
err = MLP23_test_std;
e=errorbar(x',y',err','color',[0.05078125,0.32421875,0.61328125]);

x = 8.5;
y = MLP24_train_mean;
err = MLP24_train_std;
e=errorbar(x',y',err','color',[255/255,211/255,155/255]);
x = 9.5;
y = MLP24_test_mean;
err = MLP24_test_std;
e=errorbar(x',y',err','color',[139/255,101/255,8/255]);

x = 11;
y = MLP25_train_mean;
err = MLP25_train_std;
e=errorbar(x',y',err','color',[255/255,225/255,255/255]);
x = 12;
y = MLP25_test_mean;
err = MLP25_test_std;
e=errorbar(x',y',err','color',[139/255,123/255,139/255]);

x = 13.5;
y = MLP26_train_mean;
err = MLP26_train_std;
e=errorbar(x',y',err','color',[145/255,44/255,238/255]);
x = 14.5;
y = MLP26_test_mean;
err = MLP26_test_std;
e=errorbar(x',y',err','color',[85/255,26/255,139/255]);

x = 16;
y = MLP27_train_mean;
err = MLP27_train_std;
e=errorbar(x',y',err','color',[202/255,225/255,255/255]);
x = 17;
y = MLP27_test_mean;
err = MLP27_test_std;
e=errorbar(x',y',err','color',[162/255,181/255,205/255]);


Xlabel = {'MLP^2_1','MLP^2_2','MLP^2_3','MLP^2_4','MLP^2_5','MLP^2_6','MLP^2_7'};
set(gca,'XTick',[1.5 4 6.5 9 11.5 14 16.5]);
set(gca,'XTickLabel',Xlabel);
xlabel('Methods')
ylabel('Accuracy')
axis([0 18 0 1.06]);
hl = legend({'MLP^2_1-train','MLP^2_1-test','MLP^2_2-train','MLP^2_2-test','MLP^2_3-train','MLP^2_3-test','MLP^2_4-train','MLP^2_4-test','MLP^2_5-train','MLP^2_5-test','MLP^2_6-train','MLP^2_6-test','MLP^2_7-train','MLP^2_7-test'}, 'Location','Eastoutside',...
    'NumColumns',2);













