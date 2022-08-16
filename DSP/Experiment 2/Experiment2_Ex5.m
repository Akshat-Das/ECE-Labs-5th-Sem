t = -100:100;
x = sin(pi*160*t);
y = awgn(x,10);
a = x + y;
xcr = xcorr(a);
plot(xcr);
title('awgn noise plot');
xlabel('t--->');
ylabel('amp');