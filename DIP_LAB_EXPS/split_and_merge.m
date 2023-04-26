img = imread('brain.png');

subimg_size = 100;

img_height = subimg_size * floor(size(img, 1) / subimg_size);
img_width = subimg_size * floor(size(img, 2) / subimg_size);
img = imcrop(img, [1 1 img_width-1 img_height-1]);

subimgs = mat2cell(img, subimg_size*ones(1,size(img,1)/subimg_size), subimg_size*ones(1,size(img,2)/subimg_size), size(img,3));

for i = 1:numel(subimgs)
    
    subimgs{i} = imfilter(subimgs{i}, fspecial('gaussian', [5 5], 2.0));
end

merged_img = cell2mat(subimgs);

figure;
subplot(1,2,1);
imshow(img);
title('Original Image');
subplot(1,2,2);
fimg=im2bw(merged_img);
imshow(fimg);
title('Merged Image');