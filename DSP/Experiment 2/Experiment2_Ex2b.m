close all;
clear all;
clc;
n = -10:10;
u = n >= 0;
x = sin(pi*n*(1/3));
a = x.*u;
stem(n,a);
title('Magnitude Plot');
xlabel('n--->');
ylabel('Amplitude')