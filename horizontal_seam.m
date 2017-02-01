% Austin Schaumberg
% CS 534 | Fall 2016
% HW3-horizontal_seam.m
function S = horizontal_seam(I)
% HORIZONTAL_SEAM uses input image, I, then chooses one optimal 
% horizontal seam. Returning a vector, S, containing row values at each 
% column.

% Establish dimenstions of an MxN matrix given the size of image, I.
[rows, cols] = size(I);

% Matrix, M, zeroed out and given size of image I.
M = zeros(rows, cols);

% In matrix, M, set first column to the weight of the first pixels
M(:, 1) = I(:, 1);

% Loop iterates through each pixel in I
for y = 2:cols
    % Applies the outside costs to M
    M(1, y) = min(I(1:2, y-1)) + I(1, y);
    M(rows, y) = min(I(rows-1:rows, y-1)) + I(rows, y);
    
    % Loop sets the minimum cost for every row in M
    for x = 2:(rows-1)
        M(x, y) = min(I(x-1:x+1, y-1)) + I(x, y);
    end
end

% Compute cumulative minimum energy for M
[nullVar, xRowIndx] = min(M(:, cols));

% initialize vector S and set column index in S to x's index
S(cols) = xRowIndx;

% Loop and conditions used to calculate index of lowest 
% cumulative energy value in last column
for y=1:cols-1
    % First x case
    if xRowIndx == 1
        [nullVar, i] = min(M(xRowIndx:xRowIndx+1, cols-y));
        xRowIndx = xRowIndx + i - 1;
    % Last x case
    elseif xRowIndx == rows
        [nullVar, i] = min(M(xRowIndx-1:xRowIndx, cols-y));
        % Update the current x index
        xRowIndx = uint8(xRowIndx + i - 2);
    % All other cases
    else    
        [nullVar, i] = min(M(xRowIndx-1:xRowIndx+1, cols-y));
        % Update the current x index
        xRowIndx = uint8(xRowIndx + i - 2);
    end 
    S(cols-y) = xRowIndx;
end
end