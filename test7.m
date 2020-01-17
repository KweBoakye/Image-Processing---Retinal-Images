retina1 = imread('retina1.png');
gr1 = rgb2gray(retina1);

gr1_localcontrast = localcontrast(gr1,0.25,0.5);
gr1_localcontrast2 = localcontrast(gr1,0.5,0.5);
gr1_localcontrast3 = localcontrast(gr1,0.75,0.5);
gr1_localcontrast4 = localcontrast(gr1,1,0.5);

subplot(2,3,1)
imshow(gr1_localcontrast)

subplot(2,3,2)
imshow(gr1_localcontrast2)

subplot(2,3,3)
imshow(gr1_localcontrast3)

subplot(2,3,4)
imshow(gr1_localcontrast4)

subplot(2,3,5)
imshow(gr1)