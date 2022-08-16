close all;
clear all;
clc;
t = 0:0.0001:1;
a = sin(2*pi*t*10);
b = sin(2*pi*t*30);
c = sin(2*pi*t*60);
d = a+b+c;
subplot(4,1,1);
plot(t,a);
title('Signal with frequency 10Hz');
xlabel('t---->')
subplot(4,1,2);
plot(t,b);
title('Signal with frequency 30Hz');
xlabel('t---->')
subplot(4,1,3);
plot(t,c);
title('Signal with frequency 60Hz');
xlabel('t---->')
subplot(4,1,4);
plot(t,d);
title('Multi-Tone Signal');
xlabel('t---->');