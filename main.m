a = imread('向下.bmp');               %读入图片
I = rgb2gray(a);                      %灰度变换

%------------------------------------
%图像裁剪
% I1 = imadjust(I,[0.2 0],[0 1]);
% imshow(I1);
I(I<150) = 0;
% imshow(I);
% BW = edge(I,'canny',0.5);
% imshow(BW)
% 
% se90 = strel('line',3,1000);
% se0 = strel('line',3,10);
% BWsid1 = imdilate(BW,[se90,se0]);
% imshow(BWsid1)
% 
% BWdfill = imfill(BWsid1,'holes');
% imshow(BWdfill)
% pause()
% %按列求和
lie = sum(I,2);
plot(lie)

[a,~] = find(lie ~= 0);
len = a(end)-a(1);  %大蒜长度
sum_up = sum(lie(a(1):a(1)+len/2));
sum_down = sum(lie(a(1)+len/2:a(end)));
if(sum_down>sum_up)
    disp('上')
else
    disp('下')
end