close all;
clear all;
clc;
n = -10:10;
u1 = n >= 0;
u2 = n >= 3;
u = u1-u2;
stem(n,u);
title('u[n]-u[n-3]');
xlabel('n--->');
ylabel('Amplitude')
