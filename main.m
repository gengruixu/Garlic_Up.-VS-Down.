a = imread('����.bmp');               %����ͼƬ
I = rgb2gray(a);                      %�Ҷȱ任

%------------------------------------
%ͼ��ü�
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
% %�������
lie = sum(I,2);
plot(lie)

[a,~] = find(lie ~= 0);
len = a(end)-a(1);  %���ⳤ��
sum_up = sum(lie(a(1):a(1)+len/2));
sum_down = sum(lie(a(1)+len/2:a(end)));
if(sum_down>sum_up)
    disp('��')
else
    disp('��')
end