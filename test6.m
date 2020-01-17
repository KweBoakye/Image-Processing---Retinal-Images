retina1 = imread('retina1.png');
gr1 = rgb2gray(retina1);

g = imcomplement(gr1);

gr1_adapthisteq = localcontrast(gr1);
g_adapthisteq = imcomplement(gr1_adapthisteq );

ghaze = imreducehaze(g,'Method','approxdcp', 'ContrastEnhancement','boost');

ghaze_adapthisteq = imreducehaze(g_adapthisteq,'Method','approxdcp', 'ContrastEnhancement','boost');

ghazenorm = imcomplement(ghaze);

ghazenorm_adapthisteq = imcomplement(ghaze_adapthisteq);

subplot(2,2,1)
imshow(ghaze)

subplot(2,2,2)
imshow(ghaze_adapthisteq)

subplot(2,2,3)
imshow(ghazenorm)

subplot(2,2,4)
imshow(ghazenorm_adapthisteq)