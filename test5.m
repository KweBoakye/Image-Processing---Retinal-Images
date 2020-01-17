retina1 = imread('retina1.png');
gr1 = rgb2gray(retina1);

g = imcomplement(gr1);

ghaze = imreducehaze(g,'ContrastEnhancement','boost');
ghaze2 = imreducehaze(g,'ContrastEnhancement','global');
ghaze3 = imreducehaze(g,'Method','approxdcp', 'ContrastEnhancement','boost');
ghaze4 = imreducehaze(g,'Method','approxdcp', 'ContrastEnhancement','global');

ghazenorm = imcomplement(ghaze);
ghaze2norm = imcomplement(ghaze2);
ghaze3norm = imcomplement(ghaze3);
ghaze4norm = imcomplement(ghaze4);

subplot(2,2,1)
imshow(ghaze)

subplot(2,2,2)
imshow(ghaze2)

subplot(2,2,3)
imshow(ghaze3)

subplot(2,2,4)
imshow(ghaze4)

figure
subplot(2,2,1)
imshow(ghazenorm)

subplot(2,2,2)
imshow(ghaze2norm)

subplot(2,2,3)
imshow(ghaze3norm)

subplot(2,2,4)
imshow(ghaze4norm)

figure
imshow(gr1)