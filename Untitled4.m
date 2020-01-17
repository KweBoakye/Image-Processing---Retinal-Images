retina1 = imread('retina1.png');

gr1 = rgb2gray(retina1);

%Kirsch's operators
g1=[5,5,5; -3,0,-3; -3,-3,-3];
g2=[5,5,-3; 5,0,-3; -3,-3,-3];
g3=[5,-3,-3; 5,0,-3; 5,-3,-3];
g4=[-3,-3,-3; 5,0,-3; 5,5,-3];
g5=[-3,-3,-3; -3,0,-3; 5,5,5];
g6=[-3,-3,-3; -3,0,5;-3,5,5];
g7=[-3,-3,5; -3,0,5;-3,-3,5];
g8=[-3,5,5; -3,0,5;-3,-3,-3];


fret1 = imfilter(retina1,g1,'conv');
fret2 = imfilter(retina1,g2,'conv');
fret3 = imfilter(retina1,g3,'conv');
fret4 = imfilter(retina1,g4,'conv');
fret5 = imfilter(retina1,g5,'conv');
fret6 = imfilter(retina1,g6,'conv');
fret7 = imfilter(retina1,g7,'conv');
fret8 = imfilter(retina1,g8,'conv');


fret9 =fret1 +fret2 +fret3 +fret4 +fret5 +fret6 +fret7 +fret8 ;
y1=max(fret1,fret2);
    y2=max(y1,fret3);
    y3=max(y2,fret4);
    y4=max(y3,fret5);
    y5=max(y4,fret6);
    y6=max(y5,fret7);
    y7=max(y6,fret8);
    




gret = rgb2gray(fret9);


h= fspecial('average',2);

gretf = imfilter(gret,h); %localcontrast(gret);
%gretf = wiener2(gret,[2 2]);
gretf2 = medfilt2(gretf);
gretf3 =adapthisteq(gretf2);
gretf4 = imclose(gretf3,strel('square',2));
gclms =graycomatrix(gret);
j = entropyfilt(gretf3,true(11));
j2 = entropyfilt(gretf4,true(11));
stats = graycoprops(gclms);




% gretb = edge(gretf3,'Sobel');
% gretb2 = edge(gretf3,'Prewitt');
% gretb3 = edge(gretf3,'Roberts');
% gretb4 = edge(gretf3,'log');
% gretb5 = edge(gretf3,'zerocross');
% gretb6 = edge(gretf3,'Canny');
% gretb7 = edge(gretf3,'approxcanny');



figure

subplot(3,3,1)
imshow(fret1)

subplot(3,3,2)
imshow(fret2)

subplot(3,3,3)
imshow(fret3)

subplot(3,3,4)
imshow(fret4)

subplot(3,3,5)
imshow(fret5)

subplot(3,3,6)
imshow(fret6)

subplot(3,3,7)
imshow(fret7)

subplot(3,3,8)
imshow(fret8)

subplot(3,3,9)
imshow(y7)

figure

subplot(2,3,1)
imshow(gretf)

subplot(2,3,2)
imshow(gretf2)

subplot(2,3,3)
imshow(gretf3 )

subplot(2,3,4)
imshow(gretf4)

subplot(2,3,5)
imshow(j,[])

subplot(2,3,6)
imshow(j2,[])

% figure
% subplot(2,4,1)
% imshow(gretb)
% 
% subplot(2,4,2)
% imshow(gretb2)
% 
% subplot(2,4,3)
% imshow(gretb3 )
% 
% subplot(2,4,4)
% imshow(gretb4)
% 
% subplot(2,4,5)
% imshow(gretb5)
% 
% subplot(2,4,6)
% imshow(gretb6)
% 
% subplot(2,4,7)
% imshow(gretb7)
