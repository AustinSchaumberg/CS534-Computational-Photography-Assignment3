Austin Schaumberg
CS 534 | Fall 2016
HW3 - File: ReadMe.txt

NOTE: All code in main.m is commented out for experiments. Only 
uncommented code in main.m, is that of steps 1-4 before experiments
section. If you wish to test any of the experimental outputs, simply 
comment out the respective lines (5-17) and uncomment as necessary.
The main.m file will have explicit directions.


Analysis of Results on experiments 2-5:

2. The images (schaumberg.2a.jpg/schaumberg.2b.jpg) produced by the energy
function (imenergy.m) appear as such, due to the edge detection function 
used. When converted to the gradient image (schaumberg.2a.jpg): it is dark 
or 'low energy' where the region has constant intensity, and bright/'high 
energy' in areas of significance/high importance are contained. In both 
images the difference from neighboring pixels provided amplitude. 
In schaumberg.2b.jpg these amplitudes were mapped with a color scale, 
resulting in blue regions depicting 'low energy' and red regions 
representing 'high energy'. In the images, objects with distinctive 
contours seem to result in 'high energy' in comparison to objects and 
scenery with lest distinct qualities, such as water.

3. The yellow seams in the image (schaumberg.3.jpg) are optimally placed in
the image where minimal changes occur, which were determined by the 
comparisons of neighboring pixels among all pixels in the image. Further 
examination of the image results from experiment #2 
(schaumberg.2a.jpg/schaumberg.2b.jpg), a keen observer will notice the 
seams are drawn in regions containing 'low energy' (blue regions). 

4. The image of the person walking in the desert (schaumberg.4a.jpg) 
represents a very successful candidate for the size reduction function 
(shrnk.m). Post size reduction of the image (schaumberg.4b.jpg) was so 
successful due to its multiple low energy regions, such as the sky and the 
sand dunes. Both of these regions are prevalent and provide a significant 
area for the algorithm to locate the lowest energy seams, as opposed to 
attempting to remove seams from the individual walking or that individual's
shadow displayed on the sand.

5. The image of the octopus painted on a fence (schaumberg.5a.jpg) 
contained multiple visual artifacts/issues, which ultimately made it an 
interesting poor result candidate for the size reduction function 
(shrnk.m). When viewing the image post size reduction (schaumberg.5b.jpg), 
one can clearly see on the far left hand side that the spacing between the
portions of the fence are all crooked from the seam removal. Although the 
algorithm attempted to do a good job of piecing the spaced portions of the 
painting together, it destroyed the appearance of a fence. 
A less noticeable, but visual artifact showing the algorithm's failure in 
this case is the appearance of the tree. It is severely consolidated onto 
itself. It could be misconstrued as the tree's original structure, but 
this does stand out when compared to the original image. Given the amount 
of detail that occurs throughout the image, it would the ground would've 
made for a better horizontal cut than the upper portion of the tree. 
No matter what the vertical areas would’ve been noticeable due to the 
fence's amount of detail and spacing between the painted image on it. 