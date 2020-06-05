clc;clear;close all;
% for 8 bit image
bits=8;
gray_level = 0:bits-1;
% Input Histogram
hist = [1 2 3 3 5 6 7 7];
% Target Histogram
target = [0 0 0 0 2 4 6 7];
% Mapping

Mapped_Levels = zeros(1,bits);
for k = 1:bits
    temp = nearest_higher(hist(k),target);
    Mapped_Levels(k) = gray_level(target == temp);
end

function [map_to] = nearest_higher(n,X)
map_to = 0;
k= 1;
X = sort(X);
while(n > X(k))
    k = ii+1;
end
map_to = X(k);
end
