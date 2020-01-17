retina1 = imread('retina1.png');
gr1 = rgb2gray(retina1);

g = imcomplement(gr1);

ghaze1 = imreducehaze(g,'Method','approxdcp', 'ContrastEnhancement','boost');
ghaze2 = imreducehaze(g,'Method','approxdcp', 'ContrastEnhancement','global');

 ghl= localcontrast(ghaze1);
 gh2= localcontrast(ghaze2);
 


subplot(2,2,1)
imshow(ghaze1)

subplot(2,2,2)
imshow(ghaze2)

subplot(2,2,3)
imshow(ghl)

subplot(2,2,4)
imshow(gh2)