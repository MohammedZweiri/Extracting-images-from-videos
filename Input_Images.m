close all
clc
# Export your video to MATLAB before starting

 filename = Your video name;

[rows, cols, channels, samples] = size(filename);
figure;
for i = 1:samples
    str = sprintf('Sample: %d ', i);  
    imshow(filename(:,:,:,i))
    imwrite(filename(:,:,:,i),['New file name' num2str(i) '.jpg'] ,'jpg')    #This will save your generated images to whatever name you give
    title(str);
    pause(0.1);
end
