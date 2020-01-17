x= [10 20 10 10]; %co-ordinates of x
y = [10 10 20 10];%co-ordinates of y

doubx= 2*x; %scale the x coordinates by 2
douby= 2*y;%scale the x coordinates by 2

transx = x+5; % translate the shape +5 in the x axis
transy = y+15;% translate the shape +5 in the x axis

cx= sum(x)/3; %find the x centroid coordinate
cy= sum(y)/3; %find the x centroid coordinate
centre = repmat([cx; cy], 1, length(x)); % use repmat to create a transformation matrix to translate the triangle to the origin

t=(pi/4); % the angle to rotate the shape

tri=[x;y]; %x and y coordinates in one matrix
rotbyt = [cos(t) -sin(t); sin(t) cos(t)]; % transformation matrix to rotate shape
rottriangle =  rotbyt*(tri - centre) + centre; % first shape is moved to origin the rotated then translated back
xrot = rottriangle(1,:); % collecting x co-ordinates, the index is for  the first row
yrot = rottriangle(2,:); % collecting y co-ordinates, the index is for  the second row

tdx = doubx+5; % calculating the x coordinates for a scaled and translated triangle
tdy = douby+15; % calculating the y coordinates for a scaled and translated triangle

ctdx= sum(tdx)/3; %find the x centroid coordinate for a scaled and translated triangle
ctdy= sum(tdy)/3; %find the y centroid coordinate for a scaled and translated triangle

centretd = repmat([ctdx; ctdy], 1, length(tdx)); % use repmat to create a transformation matrix to translate the triangle to the origin
tritd=[tdx;tdy];

rottritd =  rotbyt*(tritd - centretd) + centretd; % first shape is moved to origin the rotated then translated back
xrottd = rottritd(1,:);
yrottd = rottritd(2,:);

subplot(2,2,1)
title('Task a')
line(doubx, douby)

subplot(2,2,2)
title('Task b')
line(transx,transy)

subplot(2,2,3)
title('Task c')
line(xrot,yrot)

subplot(2,2,4)
title('Task d')
line(xrottd,yrottd)