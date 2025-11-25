clear all;  clc; 
close all;

x=im2double(imread('13.jpg'));
% figure; imshow(x)

PSF = fspecial('gaussian', [9 9], 1.3);

tic; out1 = CCM(x,PSF,80); toc;
figure; imshow([x,out1]); title('CCM Result')
% imwrite(out1,'CCM.jpg')

tic; out2 = ACM(x,PSF,80); toc;
figure; imshow([x,out2]); title('ACM Result')
% imwrite(out2,'ACM.jpg')
