clc;
clear all;
close all;
Fs = 500;
wp = [2*29/Fs , 2*30/Fs];
ws = [2*15/Fs , 2*45/Fs];
t = 0: 1/Fs : 0.5;
x = sin(2*pi*10*t)+sin(2*pi*30*t)+sin(2*pi*50*t);
X = fft(x);
l = length(X)/2;
f = (0:(l-1))*Fs/(2*l);
figure (1);
plot(f,abs(X(1:l)));zoom on;
title('Magnitude Response on input'); ylabel('Amplitude'), xlabel('frequency');
N = ceil(6.6*pi/(ws(2)-wp(2)));
b = fir1(N,wp);
B = fft(b);
m = length(X)/2;
A = (0:(m-1))*Fs/(2*m);
figure(3);
plot(A,abs(B(1:m)));zoom on;
title('Magnitude Response on output'); ylabel('Amplitude'), xlabel('frequency');
[H,W] = freqz(b,1,1024);
figure(2);
plot(W/pi , 20*log10(abs(H)));grid on;
title('FIR filter using Hamming window'); 
xlabel('Normalized Frequency'), ylabel('Gain in dB');

