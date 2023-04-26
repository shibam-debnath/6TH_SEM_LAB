% Read in the image
I = imread('line.jpg');

% Convert to grayscale
I = rgb2gray(I);

% Define the convolution masks
horizontal_mask = [-1 -1 -1; 2 2 2; -1 -1 -1];
vertical_mask = [-1 2 -1; -1 2 -1; -1 2 -1];
oblique_pos45_mask = [-1 -1 2; -1 2 -1; 2 -1 -1];
oblique_neg45_mask = [2 -1 -1; -1 2 -1; -1 -1 2];

% Apply the masks to the image using convolution
R1 = conv2(I, horizontal_mask, 'same');
R2 = conv2(I, vertical_mask, 'same');
R3 = conv2(I, oblique_pos45_mask, 'same');
R4 = conv2(I, oblique_neg45_mask, 'same');

% Combine the responses
R = max(abs(R1), abs(R2));
R = max(R, abs(R3));
R = max(R, abs(R4));

% Threshold the result
T = 200;
BW = R > T;

% Display the result
imshow(BW);