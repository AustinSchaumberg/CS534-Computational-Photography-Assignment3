% Austin Schaumberg
% CS 534 | Fall 2016
% HW3 - remove_horizontal_seam.m
function [ J ] = remove_horizontal_seam( I, S )
%REMOVE_HORIZONTAL_SEAM takes an optimal seam computed by 
% the function horizontal_seam.m (computes our S) and removes it from an
% image, I.

imageRows = size(I, 1);
imageColumns = size(I, 2);

for dimensions = 1:3
    for columns = 1:imageColumns
        for rows = S(columns):imageRows-1
            I(rows,columns,dimensions) = I(rows+1,columns,dimensions);
        end
    end
end

J = I(1:imageRows-1,:,:);

end