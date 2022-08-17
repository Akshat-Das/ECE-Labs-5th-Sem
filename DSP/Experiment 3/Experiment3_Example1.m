clc; 
clear all;
close all;
w = (0:1:500)*pi/500; 
x = exp(1i*w)./(exp(1i*w)-0.5); 
subplot(1,2,1)
plot(w, abs(x)), title('Magnitude response'), xlabel('w'), ylabel('Amplitude');
subplot(1,2,2), plot(w,angle(x));
title('Phase Response'), xlabel('w(radians)'), ylabel('Angle');