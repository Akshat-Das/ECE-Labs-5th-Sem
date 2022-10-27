clc, close all, clear all;
 
a = imread('lena_gray.bmp','bmp');
a1 = histeq(a);
imhist(a1);
subplot(221),imshow(a);
subplot(222),imshow(a1);
subplot(223),imhist(a);
subplot(224),imhist(a1);