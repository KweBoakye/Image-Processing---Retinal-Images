retina1 = imread('retina1.png');
gr1 = rgb2gray(retina1);

g = imcomplement(gr1);

ghaze1 = imreducehaze(g,'Method','approxdcp', 'ContrastEnhancement','boost');
ghaze2 = imreducehaze(g,'Method','approxdcp', 'ContrastEnhancement','global');

gh1lc = localcontrast(ghaze1,0.25,0.5);
gh1lc2 = localcontrast(ghaze1,0.5,0.5);
gh1lc3 = localcontrast(ghaze1,0.75,0.5);
gh1lc4 = localcontrast(ghaze1,1,0.5);


gh2lc = localcontrast(ghaze1,0.25,0.5);
gh2lc2 = localcontrast(ghaze1,0.5,0.5);
gh2lc3 = localcontrast(ghaze1,0.75,0.5);
gh2lc4 = localcontrast(ghaze1,1,0.5);

subplot(2,2,1)
imshow(gh1lc)

subplot(2,2,2)
imshow(gh1lc2)

subplot(2,2,3)
imshow(gh1lc3)

subplot(2,2,4)
imshow(gh1lc4)

figure

subplot(2,2,1)
imshow(gh2lc)

subplot(2,2,2)
imshow(gh2lc2)

subplot(2,2,3)
imshow(gh2lc3)

subplot(2,2,4)
imshow(gh2lc4)

figure 
imshow(gr1)