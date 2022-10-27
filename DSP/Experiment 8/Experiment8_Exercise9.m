clc, close all, clear all;

a = imread('lena_gray.bmp','bmp');
b = imresize(a, 2);
c = imnoise(b,'salt & pepper',0.25);
subplot(221),imshow(c);
d1 = medfilt2(c,[3,3]);
d2 = medfilt2(c,[5,5]);
d3 = medfilt2(c,[7,7]);
subplot(222),imshow(d1);
subplot(223),imshow(d2);
subplot(224),imshow(d3);