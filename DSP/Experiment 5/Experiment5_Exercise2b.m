clc;
clear all;
close all;
ap = 1;
as = 50;
wp = 2*pi*1000;
ws = 2*pi*200;
[n,wc] = cheb1ord(wp,ws,ap,as,"s");
disp('Order :');
disp(n);
disp("Cutoff Frequency :");
disp(wp/(2*pi));
[b, a] = cheby1(n,ap,wp,"high",'s');
[h, w] = freqs(b,a);
plot(w/(2*pi),20*log10(abs(h)));
grid on;
title("Frequency Response");
ylabel("Magnitude(db)");
xlabel("Frequency(hz)");