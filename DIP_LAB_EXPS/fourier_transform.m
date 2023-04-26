clc;
clear all; 
close all; 
img =imread('Image.jpeg');
gray_img=rgb2gray(img);
subplot(3,3,2); imshow(gray_img); title("Original Image");
F = fft2(gray_img);
subplot(3,3,4); imshow(abs(F), []); title("Fourier Tranform");
Fsh = fftshift(F);
subplot(3,3,5); imshow(abs(Fsh), []); title("Centered fourier transform");
log_img = log(1+abs(Fsh));
subplot(3,3,6); imshow(log_img, []);title("Log fourier transform");
F = ifftshift(Fsh);
f = ifft2(F);
subplot(3,3,8); imshow(f, []);title("Reconstructed Image");