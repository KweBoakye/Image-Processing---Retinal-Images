

retina1 = imread('retina1.png'); %read in image
gr1 = rgb2gray(retina1); 
mono1= imread('monochrome1.png');
mono1= rgb2gray(mono1);
mono1 = imbinarize(mono1);
mono1 = imresize(mono1,[267 280]);

redc = retina1(:,:,1);
%redcg = rgb2gray(redc);
redc = histeq(redc);
redc2 = imbinarize(redc,0.8);

subplot(2,2,1)
imshow(redc)

