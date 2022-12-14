close all;clear all;clc;
ap = 1;as = 30; f = 100;
a = 30/(2*pi); omega = a/f; wp = omega/pi;
b = 40/(2*pi); omega1 = b/f; ws = omega1/pi;
[Nb, wcb] = buttord(wp,ws, ap, as, 's');
disp("Order");disp(Nb);disp("Cutoff Frequency");disp(wcb);
[b_s,a_s] = butter(Nb,wcb, 's');
[b_z, a_z] = impinvar(b_s,a_s,f); 
[hz,wz] = freqz(b_z,a_z);
subplot(2,1,1);
plot(wz/pi,20*log10(abs(hz)));
grid on;
ylabel("Magnitude(db)");
xlabel("Frequency");

[Nb, wcb] = buttord(wp,ws, ap, as, 's');
[b_s,a_s] = butter(Nb,wcb, 's');
[b_z, a_z] = bilinear(b_s,a_s,f); 
[hz,wz] = freqz(b_z,a_z);
subplot(2,1,2);
plot(wz/pi,20*log10(abs(hz)));
grid on;
ylabel("Magnitude(db)");
xlabel("Frequency");