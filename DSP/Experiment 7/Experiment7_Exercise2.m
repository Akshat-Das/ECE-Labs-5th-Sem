wp = 0.5*pi;
ws = 0.6*pi;
as = 40;
k = (as - 7.95)/14.36;
n1 = ceil(6.6*pi/(ws-wp));
n2 = ceil((k*2*pi)/(ws-wp));
disp(n1);
disp(n2);
b = fir1(n1,[0.4 0.6]);
[h,w] = freqz(b,1,512);
plot(w/pi,20*log10(abs(h)));
grid on, title("FIR Filter using Hamming Window");
xlabel("Normalized Frequency"), ylabel("Gain in db")
b1 = fir1(n2,[0.4 0.6],kaiser(n2+1,3.3953));
[h1,w1] = freqz(b1,1,512);
figure(2),plot(w1/pi,20*log10(abs(h1))),grid on, title("FIR Filter using Kaiser Window");
xlabel("Normalized Frequency"), ylabel("Gain in db");