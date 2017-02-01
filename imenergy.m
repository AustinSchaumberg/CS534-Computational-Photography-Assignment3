% Austin Schaumberg
% CS 534 | Fall 2016
% HW3-imenergy.m
function [ E ] = imenergy( I )
%IMENERGY creates visualizaiton of input image's low/high energy.

% convert the input image to double
doubleImage = im2double(I);
% convert double of the image to grayscale
grayImage = rgb2gray(doubleImage);
% convert to the gray scale image to produce gradient magnitude
% and gradient direction, although not used.
[Gmag, Gdir_NotUsed] = imgradient(grayImage);

% saved imshow in line 17 as schaumberg.2a.jpg, gradient visualization of
% image's energy
% imshow(Gmag); 

% E = gradient magnitude from gray image.
E = Gmag;
end