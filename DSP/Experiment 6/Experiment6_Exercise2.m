clc, clear all , close all;
wp = 0.2*pi;
ws = 0.3*pi;
ap = 1;
as = 15;
T = 1; 
[Nb, wcb] = cheb1ord(wp,ws, ap, as, 's');
disp("Order");disp(Nb);disp("Cutoff Frequency");disp(wcb);
[b_s,a_s] = cheby1(Nb,ap, wcb, 's');
[b_z, a_z] = impinvar(b_s,a_s,1/T); 
[hz,wz] = freqz(b_z,a_z);
subplot(3,1,1);
plot(wz/pi,20*log10(abs(hz)));
grid on;
ylabel("Magnitude(db)");
xlabel("Frequency");
[Nb, wcb] = cheb2ord(wp,ws, ap, as, 's');
disp("Order");disp(Nb);disp("Cutoff Frequency");disp(wcb);
[b_s,a_s] = cheby2(Nb,as, wcb, 's');
[b_z, a_z] = impinvar(b_s,a_s,1/T); 
[hz,wz] = freqz(b_z,a_z);
subplot(3,1,2);
plot(wz/pi,20*log10(abs(hz)));
grid on;
ylabel("Magnitude(db)");
xlabel("Frequency");
[Nb, wcb] = ellipord(wp,ws, ap, as, 's');
disp("Order");disp(Nb);disp("Cutoff Frequency");disp(wcb);
[b_s,a_s] = ellip(Nb,ap,as,wcb, 's');
[b_z, a_z] = impinvar(b_s,a_s,1/T); 
[hz,wz] = freqz(b_z,a_z);
subplot(3,1,3);
plot(wz/pi,20*log10(abs(hz)));
grid on;
ylabel("Magnitude(db)");
xlabel("Frequency");