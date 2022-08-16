close all;
clear all;
clc;
k = 0:0.0001:5;
a = sawtooth((2*pi*k),0.5);
plot(k,a);
title("Triangular Wave");