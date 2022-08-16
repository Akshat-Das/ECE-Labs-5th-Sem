clc;
close all;
clear all;
k = 0:15;
a = power(-0.5,k);
b = power(2,k);
c = power(-2,k);
subplot(3,1,1);
stem(k,a);
title('-0.5^k');
subplot(3,1,2);
stem(k,b);
title('2^k');
subplot(3,1,3);
stem(k,c)
title('-2^k');