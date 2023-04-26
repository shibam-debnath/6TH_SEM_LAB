image = imread('ll.jpg');
image = rgb2gray(image);

% Define the threshold value
threshold = 50;
% Apply global thresholding using our custom function
thresholded = my_threshold(image, threshold);
% Save the result
imwrite(thresholded, 'output.jpg');
subplot(3,1,1);
imshow('output.jpg'); title('Output Image for threshold 50');


% Define the threshold value
threshold = 100;
% Apply global thresholding using our custom function
thresholded = my_threshold(image, threshold);
% Save the result
imwrite(thresholded, 'output.jpg');
subplot(3,1,2);
imshow('output.jpg'); title('Output Image for threshold 100');


% Define the threshold value
threshold = 150;
% Apply global thresholding using our custom function
thresholded = my_threshold(image, threshold);
% Save the result
imwrite(thresholded, 'output.jpg');
subplot(3,1,3);
imshow('output.jpg'); title('Output Image for threshold 180');


function thresholded = my_threshold(image, threshold)
    % Get the size of the image
    [rows, cols] = size(image);
    
    % Initialize the output image
    thresholded = zeros(rows, cols);
    
    % Loop over the pixels of the image
    for i = 1:rows
        for j = 1:cols
            % Apply the threshold
            if image(i, j) > threshold
                thresholded(i, j) = 1;
            else
                thresholded(i, j) = 0;
            end
        end
    end
end