%�ú���������Դ�ȡ��ֵ����ֵ�˲�
function m=mid_fliter(n,x)
[height,width]=size(x);
a(1:n,1:n)=1;
x1=double(x);
x2=x1;

for i= 1:height-n+1
    for j= 1:width-n+1
        c=x1(i:i+n-1,j:j+n-1).*a;     %��x��Ԫ����ģ��a���о��
        b=c(1,:);
        for k=2:n
            b=[b,c(k,:)];           %ƴ�ӳ�������
        end
        t1=median(b);           %��ƴ�ӵ�������ȡ��ֵ
        x2(i+(n-1)/2,j+(n-1)/2)=t1;
        
    end
end
m=uint8(x2);