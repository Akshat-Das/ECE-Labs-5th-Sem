clc, close all, clear all;

a = imread('lena_gray.bmp','bmp');
b = roipoly(a)