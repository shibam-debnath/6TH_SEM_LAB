clc;
clear;

img = imread('dip_img.jpeg');
img = rgb2gray(img);

rmin = min(img(:));
rmax = max(img(:));

// we can set rmmin and rmax 
desired_min=input("Enter the desired minimum value: ");
desired_max=input("Enter the desired maximum value: ");
img_stretched= ((img-rmin).*((desired_max-desired_min)/(rmax-rmin)))+desired_min;
subplot(2,2,1), imshow(img); title('Original Image');
subplot(2,2,3), imshow(img_stretched); title('Stretched Contrast Image');
subplot(2,2,2), imhist(img); title('Histogram of Original Image');
subplot(2,2,4), imhist(img_stretched); title('Histogram of Stretched Contrast Image');

% Smin = 20;
% Smax = 255;
% 
% [row, col] = size(I_gray);                       % Size of gray image
% len = row * col;                                % Total number of pixels
% I_vec = I_gray(:);                              % Vectorinzing the matrix
% I_sort = sort(I_vec);                           % Sorting the values in ascending values
% I_unq = unique(I_sort);                         % Finding unique values
% 
% Imin = min(I_unq);
% Imax = max(I_unq);
% 
% % Slope
% Slope = (Smax-Smin)./(Imax-Imin);
% S_new = Slope.*(I_unq-Imin)+Smin;
% 
% % Stretching
% I_stretched = zeros(row,col);
% for jj = 1:length(I_unq)
%     I_stretched(I_gray == I_unq(jj)) = S_new(jj);
% end
% 
% I_stretched = uint8(I_stretched);
% figure;
% subplot(2,2,1)
% imshow(I_gray)
% title('Original')
% subplot(2,2,2)
% imshow(I_stretched)
% title('Stretched')
% subplot(2,2,3)
% histogram(I_gray)
% subplot(2,2,4)
% histogram(I_stretched)