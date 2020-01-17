retina1 = imread('retina1.png');
gr1 = rgb2gray(retina1);
level = multithresh(gr1, 12);
seg_I = imquantize(gr1,level);




g = imcomplement(gr1);
g2 = imbinarize(g);
[B,L,N,A] = bwboundaries(g2);
subplot(2,2,1)
imshow(gr1)

subplot(2,2,2)
imshow(seg_I,[])

subplot(2,2,3)
imshow(g)

subplot(2,2,4)
imshow(label2rgb(L, @jet, [.5 .5 .5]))
hold on
for k = 1:length(B)
   boundary = B{k};
   plot(boundary(:,2), boundary(:,1), 'w', 'LineWidth', 2)
end

