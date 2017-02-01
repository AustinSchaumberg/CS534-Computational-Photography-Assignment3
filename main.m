% Austin Schaumberg
% CS 534 | Fall 2016
% HW3-main.m

% Code for desired main.m as stated by steps 1-4 on HW3, before 
% Experiments 1-5
I = imread('union-terrace.jpg');
% 1. Compute the energy function
E = imenergy(I);
% 2. Compute the optimal horizontal seam
S = horizontal_seam(E);
% 3. Remove 1 horizontal seam
J = remove_horizontal_seam(I, S);
% 4. Resize Image (remove one less row, since removed above)
I = shrnk(J, 4, 5);
% Show resized image if needed, uncomment.
imshow(I);

%Code for Experiment 1
%Uncomment lines 3 - 9 (main.m)
% I = imread('union-terrace.jpg');
% pica = shrnk(I, 0, 100);
% picb = shrnk(I, 100, 0);
% picc = shrnk(I, 100, 100);
% imwrite(pica, 'schaumberg.1a.jpg');
% imwrite(picb, 'schaumberg.1b.jpg');
% imwrite(picc, 'schaumberg.1c.jpg');

%Code for Experiement 2: 
%Uncomment lines 12 - 15 (main.m) & (horizontal_seam.m, line 20-21 for 2b)
% I= imread('union-terrace.jpg');
% E = imenergy(I);
% pica = imagesc(E);
% saveas(pica, 'schaumberg.2b.jpg');

%Code for Experiment 3: schaumberg.3.jpg, with drawn in seams.
%Uncomment lines 20 - 29 (main.m)
% I= imread('union-terrace.jpg');
% E = imenergy(I);
% h = imagesc(E);
% Sa = horizontal_seam(E);
% hSeam = seam_draw(I,Sa);
% I = permute(hSeam,[2 1 3]);
% Sb = horizontal_seam(E);
% vSeam = seam_draw(I,Sb);
% I = permute(vSeam,[2 1 3]);
% imwrite(I, 'schaumberg.3.jpg');

%Code for Experiment 4: 
%Uncomment lines 37 - 39 (main.m)
% I = imread('schaumberg.4a.jpg');
% picb = shrnk(I, 0, 100);
% imwrite(picb, 'schaumberg.4b.jpg');

%Code for Experiment 5: Seam Failure, visual artifacts
%Uncomment lines 57 - 59 (main.m)
% I = imread('schaumberg.5a.jpg');
% picb = shrnk(I, 100, 100);
% imwrite(picc, 'schaumberg.5b.jpg');