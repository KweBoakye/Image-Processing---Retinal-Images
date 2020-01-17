retina1 = imread('retina1.png');
retina2 = imread('retina2.png');


gr1 = rgb2gray(retina1);
gr2 = rgb2gray(retina2);



grfill = gr1;
grfill(grfill>12) = 255;
[B,L,N,A] = bwboundaries(grfill);
labret = rgb2lab(retina1);

level = multithresh(gr1);
level2 = graythresh(gr1);
level3 = adaptthresh(gr1);

seg_I = imquantize(gr1,level);
seg_I2 = imbinarize(gr1,level2);
seg_I3 = imbinarize(gr1,level2);
background = imopen(gr1,strel('disk',40));

subplot(2,2,1)
imshow(seg_I,[])

subplot(2,2,2)
imshow(seg_I2)

subplot(2,2,3)
imshow(seg_I3)
