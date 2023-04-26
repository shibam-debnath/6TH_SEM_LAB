% Read input image
img = imread('ball.png');

% Initialize binary image
binary_img = zeros(size(img));

% Define seed point for region growing
[x,y] = size(binary_img);

seed_point = [x/2, y/2]; % x and y coordinates of the seed point

% Define threshold value for pixel intensity similarity
threshold = 20; % you can adjust this value based on your needs

% Perform region growing
queue = [seed_point];
while ~isempty(queue)
    % Get the current pixel from the queue
    current_point = queue(1,:);
    queue(1,:) = [];
    
    % Check if current pixel is similar to seed point
    if abs(img(current_point(2), current_point(1)) - img(seed_point(2), seed_point(1))) <= threshold && binary_img(current_point(2), current_point(1)) == 0
        % Add current pixel to the region
        binary_img(current_point(2), current_point(1)) = 1;
        
        % Add neighboring pixels to the queue
        [rows, cols] = size(img);
        if current_point(2) > 1
            queue = [queue; [current_point(1), current_point(2)-1]];
        end
        if current_point(2) < rows
            queue = [queue; [current_point(1), current_point(2)+1]];
        end
        if current_point(1) > 1
            queue = [queue; [current_point(1)-1, current_point(2)]];
        end
        if current_point(1) < cols
            queue = [queue; [current_point(1)+1, current_point(2)]];
        end
    end
end

% Display the segmented image
figure;
imshow(binary_img);
title("Region growing ")
