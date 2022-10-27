clc, clear all, close all;
I=imread('lena_gray','bmp');
figure(1),imshow(I), title('Original Image');
figure(2),imshow(fft2(I)), title('FFT of original');
B=imrotate(I,45);
figure(3),imshow(B), title('New Image');
figure(4),imshow(fft2(B)), title('FFT of new');
C=fftshift(I);
figure(5),imshow(C), title('Original image with shift');
D=fftshift(B);
figure(6),imshow(D), title('Rotated image with shift');
E=imagesc(B);
F=log(abs(B));
figure(7),imshow(E), title('Using imagesc');
figure(8),imshow(F), title('Using log');