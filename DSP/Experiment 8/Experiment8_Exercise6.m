clc, close all, clear all;

a = imread('lena_gray.bmp','bmp');
b = imnoise(a, 'salt & pepper');
c = medfilt2(b);
subplot(221),imshow(a);
subplot(222),imshow(b);
subplot(223),imshow(c);