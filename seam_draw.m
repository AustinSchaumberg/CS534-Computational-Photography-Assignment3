% Austin Schaumberg
% CS 534 | Fall 2016
% HW3 - seam_draw.m
function [ J ] = seam_draw( I,S )
% SEAM_DRAW draws a seam on I (image) given S(seam location)
    for col = 1:size(I,2)
        %in yellow (= 500)
        I(S(col),col,1:2)=500;
        J=I;
    end
end