a = imread('����.bmp');               %����ͼƬ
I = rgb2gray(a);                      %�Ҷȱ任
figure
imshow(I);
%------------------------------------
%ͼ��ü�
[line_num,row_num] = size(I);
sum_p = sum(sum(I));
average_line = sum_p/line_num;
average_row = sum_p/row_num;
ilinee = [];
for iLine = 1:1:line_num
    if(sum(I(iLine,:))<average_line)
        ilinee = [ilinee,iLine];
%         I1(iLine,:)=[];
        disp('hhhh')
    end
end
I(ilinee,:)=[];
figure
imshow(I)
% I1 = imadjust(I,[0.2 0],[0 1]);
% imshow(I1);
% % I(I<150) = 0;
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
% % lie = sum(I,2);
% % figure
% % plot(lie)
% % 
% % [a,~] = find(lie ~= 0);
% % len = a(end)-a(1);  %���ⳤ��
% % sum_up = sum(lie(a(1):a(1)+len/2));
% % sum_down = sum(lie(a(1)+len/2:a(end)));
% % if(sum_down>sum_up)
% %     disp('��')
% % else
% %     disp('��')
% % end