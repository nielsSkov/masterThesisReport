close all
clear
clc

data = csvread('F0003CH1.csv',19,3);
t = data(:,1);
x = data(:,2)*10;

N = 10;
a = 1;
b = 1/N * ones(1,N);

y = filter(b,a,x);

thr=0.1;
med=medfilt2(x,[10,1]); 

px = [0 20];
py1 = [9.52 9.52];
py2 = [8.24 8.24];

figure
hold on
plot(t(600:end-200)-t(600),y(600:end-200),'Color',[0 0 0.5])
plot(px,py1,'--','Color',[0.7 0 0.1])
plot(px,py2,'--','Color',[0 0.5 0])
FigureLatex('Hysteresis Behavior of the Actuator','Time [s]','Current [A]',0,0,0,[0 17],0,12,14,1.3)

%%
close all
clear
clc

data = csvread('F0000CH1.csv',19,3);
t = data(:,1);
x = data(:,2)*10;

N = 10;
a = 1;
b = 1/N * ones(1,N);

y = filter(b,a,x);

thr=0.1;
med=medfilt2(x,[10,1]); 

px = [0 20];
py1 = [9.52 9.52];
py2 = [8.24 8.24];

figure
hold on
plot(t(1300:end)-t(1300),y(1300:end),'Color',[0 0 0.5])
FigureLatex('Behavior when Changing Direction of the Motor','Time [s]','Current [A]',0,0,0,[0 2.3],0,12,14,1.3)
