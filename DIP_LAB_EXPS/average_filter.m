inpict = imread("dip_img.jpeg");
% what stops this from breaking if the image is RGB?
[row,col,~] = size(inpict); % always discard the last output from size()
outpict = zeros(row,col,class(inpict)); % preallocate to appropriate class
for i = 2:1:row-1 % avoiding the edges is a simple strategy, but not very good
    for j = 2:1:col-1 % a better way would be edge padding/replication
        % get a sample
        sampleblock = inpict(i-1:i+1,j-1:j+1);
        % don't need a bunch of temporary variables or unused lines
        % RHS is uint8-scale double
        % LHS is uint8
        % the assignment implicitly uses round() when casting
        outpict(i,j) = mean(sampleblock(:));
    end
end
% don't need a bunch of redundant images
% imshow(inpict)
subplot(1,2,1);
imshow(inpict);
title('Original Image');

subplot(1,2,2);
imshow(outpict);
title('Average Filter');
% montage({inpict outpict})