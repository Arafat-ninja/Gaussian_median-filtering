function e=zero_eage(n,x)
[height,width]=size(x);
b1(1:height+2*n-2,1:n-1)=0;  %�����߶�Ϊheight+2*n-2����Ϊn-1�ľ���
b2(1:n-1,1:width)=0;       %�����߶�Ϊn-1����Ϊwidth�ľ���
y1=[b2;x;b2];              %��ԭͼ������������µĲ������
y2=[b1,y1,b1];
e=y2;
