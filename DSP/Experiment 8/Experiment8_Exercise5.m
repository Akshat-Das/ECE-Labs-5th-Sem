clc, close all, clear all;

a = imread('lena_gray.bmp','bmp');
bw1 = edge(a,'sobel');
bw2 = edge(a,'canny');
subplot(221),imshow(bw1);
subplot(222),imshow(bw2);