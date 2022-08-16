clear all;
close all;
clc;
k = 0:0.0001:5;
a = square((2*pi*k),25);
b = square((2*pi*k),50);
c = square((2*pi*k),75);
subplot(3,1,1)
plot(k,a);
title('25% Duty Cycle');
subplot(3,1,2);
plot(k,b);
title('50% Duty Cycle');
subplot(3,1,3);
plot(k,c);
title('75% Duty Cycle')