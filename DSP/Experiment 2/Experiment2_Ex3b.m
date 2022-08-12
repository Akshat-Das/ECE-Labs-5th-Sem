close all;
clear all;
clc;
n = 0:10;
n0 = 0;
n1 = 1;
n2 = 3;
u = n >= 0;
u1 = n >= 10;
h = power(0.5,n).*(u - u1);
x =((n-n0)==0)+(3*((n-n1)==0))+(4*((n-n2)==0));
ans1 = conv(h,x);
stem(ans1);
title('Magnitude Plot');
xlabel('n--->');
ylabel('Amplitude')