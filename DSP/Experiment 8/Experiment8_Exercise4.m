clc, close all, clear all;
 
a = imread('lena_gray.bmp','bmp');
plot(fft2(a));
plot(fftshift(a));