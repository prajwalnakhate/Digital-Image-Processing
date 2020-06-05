clc;clear;close all;
% input
img = [4 4 3 2; 3 7 6 1; 2 7 6 2; 0 1 0 2];
% input gradient
grad = [12 14 23 13; 16 11 21 18; 21 24 23 12; 12 21 20 10];


[row, col] = size(img);
I_after_pad = [9999.*ones(row,1) grad 9999.*ones(row,1)];
I_after_pad = [9999.*ones(1,col+2); I_after_pad; 9999.*ones(1,col+2)];


I_contrasted = zeros(row,col);
% Get contrasted image
for ith = 1:row
    for jth = 1:col
        n = grad(ith,jth);
        mm = ith+1;
        nn = jth+1;
        I_local = I_after_pad(mm-1:mm+1,nn-1:nn+1);
        I_local_min = min(I_local(:));
        for kk = mm-1:mm+1
            for ll = nn-1:nn+1
                if I_after_pad(kk,ll) == I_local_min
                    local_p_x = kk-1;
                    local_p_y = ll-1;
                end
            end
        end
        
       
        I_contrasted(ith,jth) = img(local_p_x,local_p_y);
    end
end



function [local_p_x,local_p_y] = GetMinimumlocal_SGD(I,n,ii,jj)
[row, col] = size(I)
I_after_pad = [9999.*ones(row,1) I 9999.*ones(row,1)];
I_after_pad = [9999.*ones(1,col+2); I_after_pad; 9999.*ones(1,col+2)];

mm = ii+1;
nn = jj+1;

I_local_min = min(I_after_pad(mm-1:mm+1,nn-1:nn+1));
for kk = mm-1:mm+1
    for ll = nn-1:nn+1
        if I_after_pad(kk,ll) == I_local_min
            local_p_x = kk-1;
            local_p_y = ll-1;
        end
    end
end
end

