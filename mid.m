clear;
x = imread('K:\��һ�����ϵĶ���\class\lena_512.bmp');
n=13;
%t=mirror_edge(n,x);
out=mid_fliter(n,x);
% out=medfilt2(x,[51,51]);           %���жԱ�
% cc=imcrop(out,[n-1 n-1 511 511]);  %�Ա�Ե������ͼ����м���
figure
imshow(out);
title('13*13������ֵԲ���˲������')