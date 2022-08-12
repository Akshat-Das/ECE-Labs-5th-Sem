close all;
clear all;
clc;
n = -10:10;
x = power(0.5,n).*(exp(1i*pi*n*0.5));
ab = abs(x);
ang = angle(x);
subplot(2,1,1);
stem(n,ab);
title('Magnitude Plot');
xlabel('n--->');
ylabel('Magnitude')
subplot(2,1,2);
stem(ang);
title('Angle Plot');
xlabel('n--->');
ylabel('Angle')
