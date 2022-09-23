clc;clear all;close all;
b_s = [0 1 1];
a_s = [1 5 6];
t = 1;
[hs, ws] = freqs(b_s,a_s);
subplot(2,1,1);
plot(ws/(2*pi),20*log10(abs(hs)));
grid on;
title("Analog Filter"),ylabel("Magnitude(db)"),xlabel("Freq");
[b_z,a_z] = bilinear(b_s,a_s,1/t);
disp(b_z);disp(a_z);
[hz,wz] = freqz(b_z,a_z);
subplot(2,1,2);
plot(wz/pi,20*log10(abs(hz)));
grid on;
title("Digital Filter"),ylabel("Magnitude(db)"),xlabel("Freq");