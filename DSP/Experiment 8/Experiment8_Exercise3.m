clc, clear all, close all;

A = [1 2 3; 0 8 6; 5 3 1];
B = [0 1; 1 0; 3 5];

C = convn(A, B);
