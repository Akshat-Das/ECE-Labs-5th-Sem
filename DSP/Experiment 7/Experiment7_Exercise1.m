wp = 0.2*pi;
ws = 0.3*pi;
as = 50;
k = (as - 7.95)/14.36;
n = ceil((k*2*pi)/(ws-wp));
disp(n)
b = fir1(n,0.2,kaiser(n+1,4.55126));
[h,w] = freqz(b,1,512);
plot(w/pi,20*log10(abs(h))),grid on, title("FIR Filter using Kaiser Window");
xlabel("Normalized Frequency"), ylabel("Gain in db");