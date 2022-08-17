a = [10 -5 1];
b = [1 -5 10];
n = 512;
[h,w] = freqz(b,a,n);
plot(w,abs(h));
title("Magnitude Response");
xlabel("w");
ylabel("amplitude");