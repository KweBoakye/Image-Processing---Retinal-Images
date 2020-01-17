retina1 = imread('retina1.png');
gr1 = rgb2gray(retina1);

g = imcomplement(gr1);

ghaze = imreducehaze(g,'ContrastEnhancement','global');

ghazenorm = imcomplement(ghaze);

ghazenormb  = imbinarize(ghazenorm);

perimeter =  bwperim(ghazenormb);
p2 = bwperim(ghazenormb,8);

BW = edge(ghazenorm);
BW2 = edge(ghazenorm, 'sobel');
BW3 = edge(ghazenorm, 'Prewitt');
BW4 = edge(ghazenorm, 'Roberts');
BW5 = edge(ghazenorm, 'log');
BW6 = edge(ghazenorm, 'zerocross');
BW7 = edge(ghazenorm, 'Canny');

BWb = edge(ghaze);
BW2b = edge(ghaze, 'sobel');
BW3b = edge(ghaze, 'Prewitt');
BW4b = edge(ghaze, 'Roberts');
BW5b = edge(ghaze, 'log');
BW6b = edge(ghaze, 'zerocross');
BW7b = edge(ghaze, 'Canny');

subplot(3,3,1)
imshow(gr1)

subplot(3,3,2)
imshow(ghaze)

subplot(3,3,3)
imshow(ghazenorm)

subplot(3,3,4)
imshow(ghazenormb)

figure

subplot(3,3,1)
imshow(perimeter)

subplot(3,3,2)
imshow(p2)

subplot(3,3,3)
imshow(BW)

subplot(3,3,4)
imshow(BW2)

subplot(3,3,4)
imshow(BW3)

subplot(3,3,5)
imshow(BW4)

subplot(3,3,6)
imshow(BW5)

subplot(3,3,7)
imshow(BW6)

subplot(3,3,8)
imshow(BW7)

subplot(3,3,8)
imshow(BW7)

figure

subplot(3,3,1)
imshow(perimeter)

subplot(3,3,2)
imshow(p2)

subplot(3,3,3)
imshow(BWb)

subplot(3,3,4)
imshow(BW2b)

subplot(3,3,4)
imshow(BW3b)

subplot(3,3,5)
imshow(BW4b)

subplot(3,3,6)
imshow(BW5b)

subplot(3,3,7)
imshow(BW6b)

subplot(3,3,8)
imshow(BW7b)

subplot(3,3,8)
imshow(BW7b)