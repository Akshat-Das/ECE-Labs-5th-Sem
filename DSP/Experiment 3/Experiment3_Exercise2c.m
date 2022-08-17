a = [1 0 0.268];
b = [0.634 0 0.634];
n = 512;
[h,w] = freqz(b,a,n);
plot(w,abs(h));
title("Magnitude Response");
xlabel("w");
ylabel("amplitude");