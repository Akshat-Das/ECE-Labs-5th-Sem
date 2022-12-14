clear all;
clc;
n = 0:5;
x = cos(n*pi/2);
y = 3.^n;
c1 = conv(x,y);
c2 = cconv(x,y,11);
x1 = [x zeros(1,11-length(x))];
y1 = [y zeros(1,11-length(y))];
c3 = ifft(fft(x1).*fft(y1));
subplot(3,1,1), stem(c1);
title("Linear Convulation");
subplot(3,1,2), stem(c2), title("Circular Convulation");
subplot(3,1,3), stem(c3), title("Linear Convulation using Circular Convulation");