retina1 = imread('retina1.png');

greenc = retina1(:,:,3);
greenc2 = greenc <= 10 & greenc >=0;
imshow(greenc2,[])