retina1 = imread('retina1.png');
gr1 = rgb2gray(retina1);

BW1 = imbinarize(gr1);
BW2 = imbinarize(gr1,'global');
BW3 = imbinarize(gr1,'adaptive');
BW4 = imbinarize(gr1,'adaptive','ForegroundPolarity','bright');
BW5 = imbinarize(gr1,'adaptive','ForegroundPolarity','dark');


subplot(2,3,1)
imshow(gr1)

subplot(2,3,2)
imshow(BW1)

subplot(2,3,3)
imshow(BW2)

subplot(2,3,4)
imshow(BW3)

subplot(2,3,5)
imshow(BW4)

subplot(2,3,6)
imshow(BW5)