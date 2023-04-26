close all;
K=1/16.*[5 7 3 ; 2 4 2 ; 1 2 1]; %random filter
I = imread('dip_img.jpeg');


subplot(2,1,1);
imshow(I);
title('Original Grayscale Image');


filterSize = length(K); % Filter window's full width.
% Compute the number of layers of pixels with value 0 to surround the image with.
numLayers = floor(filterSize/2); % Will be 1
I_padded = padarray(I, [numLayers, numLayers]); %Zero-padding(zeros around the image)
filteredImage=convolution(I_padded , K , numLayers , filterSize); %add 2 extra parameters numLayers,filterSize
filteredImage = cast(filteredImage, 'like', I); %turn it to uint8 form instead of double

subplot(2,1,2);
imshow(filteredImage);
title('Manual convolution (zero-padding)');

%my manual convolution function 
function  convImage  = convolution( image,kernel,numLayers , filterSize )
[rows, columns] = size(image);
filteredImage = zeros(size(image)); % Initialize to same size as original.
for col = numLayers + 1 : columns - numLayers
	for row = numLayers + 1 : rows - numLayers
		% Now for a window with the center pixel situated at (row, col,
		% scan the filter window, multiplying its values by the values of the original image underneath it.
		localSum = 0; % Initialize sum to zero for this (row, column) location.
		for c = 1 : filterSize
			% Get the column index of the original image underneath the corresponding pixel in the filter window
			ic = col + c - numLayers - 1;
			for r = 1 : filterSize
				% Get the row index of the original image underneath the corresponding pixel in the filter window
				ir = row + r - numLayers - 1;
				% Sum up the product into our running total for this window location.
				localSum = localSum + double(image(ir, ic)) * kernel(r, c);
			end
		end
		% Now we have the filtered value.  Assign it to our output image.
		convImage(row, col) = localSum;
	end
end
end