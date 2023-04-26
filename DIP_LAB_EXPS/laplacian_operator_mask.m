x=imread('ll.jpg');
figure;

g=[0 1 0;1 -4 1;0 1 0];
g2=[0 0 1 0 0;0 1 2 1 0;1 2 -16 2 1;0 1 2 1 0;0 0 1 0 0];

subplot(3,1,1);
imshow(x);
title('Original Image');

output=imfilter(x,g);
subplot(3,1,2);
imshow(output)
title('Ouput of 3X3 laplacian filter');

output2=imfilter(x,g2);
subplot(3,1,3);
imshow(output2)
title('Ouput of 5X5 laplacian filter');