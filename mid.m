clear;
x = imread('K:\研一电脑上的东西\class\lena_512.bmp');
n=13;
%t=mirror_edge(n,x);
out=mid_fliter(n,x);
% out=medfilt2(x,[51,51]);           %进行对比
% cc=imcrop(out,[n-1 n-1 511 511]);  %对边缘处理后的图像进行剪裁
figure
imshow(out);
title('13*13自制中值圆域滤波后成像')