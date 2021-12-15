function e=zero_eage(n,x)
[height,width]=size(x);
b1(1:height+2*n-2,1:n-1)=0;  %产生高度为height+2*n-2，宽为n-1的矩阵
b2(1:n-1,1:width)=0;       %产生高度为n-1，宽为width的矩阵
y1=[b2;x;b2];              %在原图矩阵四周组合新的补零矩阵
y2=[b1,y1,b1];
e=y2;
