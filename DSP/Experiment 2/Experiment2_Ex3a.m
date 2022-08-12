close all;
clear all;
clc;
n = 0:10;
u = n >= 0;
u1 = n >= 10;
h = power(0.5,n).*(u - u1);
u2 = n >= 5;
x = power(0.8,n).*(u - u2);
ans1 = conv(h,x);
stem(ans1);
title('Magnitude Plot');
xlabel('n--->');
ylabel('Amplitude')