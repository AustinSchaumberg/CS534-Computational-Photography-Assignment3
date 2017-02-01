% Austin Schaumberg
% CS 534 | Fall 2016
% HW3-shrnk.m
function [ J ] = shrnk( I, num_rows_removed, num_columns_removed )
% SHRNK is a size reduction funciton that removes the stipulated amount
% of rows/colums to be removed provided by the user. Then uses our other
% functions created in the program to remove the horizontal seams,
% then rotates 90 degrees to remove specified column seams.

% loop takes an Image(size M x N) and produces an
% Image(size (M - num_rows_reomved) x N)
for k = 1:num_rows_removed
    I = remove_horizontal_seam(I,horizontal_seam(I));
end

% rotates image 90 degrees (so we do not have to create vertical 
% seam detection and removal, as this accomplishes the same goal)
I = permute(I,[2 1 3]);

% loop takes an Image(size M x N) and produces an
% Image(size M x (N - num_columns_reomved))
for k = 1:num_columns_removed
    I = remove_horizontal_seam(I,horizontal_seam(I));
end

% re-rotates image 90 degrees to original orientation.
J = permute(I,[2 1 3]);

end