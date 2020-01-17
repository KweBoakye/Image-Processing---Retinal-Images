retina1 = imread('retina1.png');
gr1 = rgb2gray(retina1);

gr1_adapthisteq = adapthisteq(gr1);

g = imcomplement(gr1_adapthisteq);
g2 = imbinarize(g);
gr1b = imbinarize(gr1_adapthisteq);
[B,L,N,A] = bwboundaries(gr1b);

g3 = imclearborder(gr1b);
SE = strel('disk',125,4);
J = imclose(gr1b,SE);
stats = regionprops(gr1b,'Centroid','MajorAxisLength','MinorAxisLength');

subplot(2,2,1)
imshow(g)

subplot(2,2,2)
imshow(label2rgb(L, @jet, [.5 .5 .5]))
hold on
for k = 1:length(B)
   boundary = B{k};
   plot(boundary(:,2), boundary(:,1), 'w', 'LineWidth', 2)
end

subplot(2,2,3)
imshow(g3)

subplot(2,2,4)
imshow(J)