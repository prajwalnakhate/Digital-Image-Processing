clc; clear all; close all;

img = imread('catimg.jpg');
greyimg= rgb2gray(img);

vector = greyimg(:);   
sortedimg = sort(vector);                         
unqimg = unique(sortedimg);                        
len=length(unqimg);

% histogram streaching formula
grad = (255-20)./(unqimg(len)-unqimg(1)); 
temp = grad.*(unqimg-unqimg(1))+20;
  
stretchedimg = zeros(size(greyimg)); % blank image

for k = 1:length(unqimg) 		 % Stretching
    stretchedimg(greyimg == unqimg(k)) = temp(k);
end

final= uint8(stretchedimg);
figure(1 );
imshow(greyimg)
title('Before Stretching')
figure( 2);
histogram(greyimg)
title('Before Stretching')
figure(3 );
imshow(final)
title('After Stretching')
figure(4 );
histogram(final)
title('After Stretching')



