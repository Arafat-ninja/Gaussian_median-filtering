function g=goss_filter(x,n,k)      %kΪ����
% a(1:n,1:n)=1;    %����n*n�ľ����
[height,width]=size(x);  
x1=double(x);
x2=x1;
n1=floor((n+1)/2);      
for i= 1:n
    for j= 1:n
        b(i,j)=exp(-((i-n1)^2+(j-n1)^2)/(2*k))/(2*pi*k);      %������˹�˾���
    end
end
s=sum(sum(b));
for i= 1:n
    for j= 1:n
        b(i,j)=(b(i,j))/s;                 %�Ը�˹�˽��й�һ��
    end
end
for i=1:height-n+1     
    for j=1:width-n+1
        c=x1(i:i+n-1,j:j+n-1).*b;     %��x��Ԫ�����˹ģ��b���е��
        s1=sum(sum(c));
        x2(i+(n-1)/2,j+(n-1)/2)=s1;       
    
    end
    
end
g=uint8(x2);