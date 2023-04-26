% MATLAB Code | Laplacian of Gaussian from Scratch

% Read Input Image
input_image = imread('ll.jpg');

% Displaying Input Image
input_image = uint8(input_image);
subplot(2,1,1);
imshow(input_image); title('Input Image');

% Convert the truecolor RGB image to the grayscale image
input_image = rgb2gray(input_image);

% Convert the image to double
input_image = double(input_image);

% Pre-allocate the filtered_image matrix with zeros
filtered_image = zeros(size(input_image));

% Define the standard deviation for Gaussian filter
sigma = 1.0;

% Create a Gaussian filter
h = fspecial('gaussian', [3 3], sigma);

% Apply the Gaussian filter to smooth the image
smoothed_image = imfilter(input_image, h);

% Laplacian Operator Mask
M = [0 0 1 0 0; 0 1 2 1 0; 1 2 -16 2 1; 0 1 2 1 0; 0 0 1 0 0];

% Edge Detection Process
for i = 1:size(smoothed_image, 1) - 4
    for j = 1:size(smoothed_image, 2) - 4

        % Gradient approximation
        G = sum(sum(M.*smoothed_image(i:i+4, j:j+4)));
                
        % Calculate magnitude of vector
        filtered_image(i+2, j+2) = G;
        
    end
end



% Define a threshold value
thresholdValue = 100; % varies between [0 255]
output_image = max(filtered_image, thresholdValue);
output_image(output_image == round(thresholdValue)) = 0;

% Displaying Output Image
subplot(2,1,2);
output_image = im2bw(output_image);
imshow(output_image); title('Edge Detected Image');