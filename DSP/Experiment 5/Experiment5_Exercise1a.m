clc;
clear all;
close all;
ap = 1;
as = 50;
wp = 2*pi*200;
ws = 2*pi*700;
[n,wc] = buttord(wp,ws,ap,as,"s");
disp('Order :');
disp(n);
disp("Cutoff Frequency :");
disp(wc/(2*pi));
[b, a] = butter(n,wc,'s');
[h, w] = freqs(b,a);
plot(w/(2*pi),20*log10(abs(h)));
grid on;
title("Frequency Response");
ylabel("Magnitude(db)");
xlabel("Frequency(hz)");