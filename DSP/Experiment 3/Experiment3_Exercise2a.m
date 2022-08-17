a = [1 0.13 0.52 0.3];
b = [0.16 -0.48 0.48 -0.16];
n = 512;
[h,w] = freqz(b,a,n);
plot(w,abs(h));
title("Magnitude Response");
xlabel("w");
ylabel("amplitude");