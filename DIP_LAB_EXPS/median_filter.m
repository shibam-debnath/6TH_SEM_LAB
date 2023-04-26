image = rgb2gray(imread('dip_img.jpeg')); 
image1 =imnoise(image, 'salt & pepper', 0.3);
subplot(1,2,1);imshow(image);title('original');
[row, column] = size(image1);
for i=4:1:row-4
   for j=4:1:column-4
       Aps = image1(i-3:i+3,j-3:j+3);
       C = Aps(:);
       C= sort(C);
       D= median(C);
       image1(i,j)=D;
   end
end
subplot(1,2,2);imshow(image1);title('Median Filter');
