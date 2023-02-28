x=[1 2 3 2 1];
y=[1 -1 1 -1];
N1=length(y)-1;
N2=length(x)-1;
rxy=conv(x,fliplr(y));
k=(-N1):N2';
n1=0:N1;n2=0:N2;
subplot(311);
stem(n2,x);
subplot(312);
stem(n1,y);
subplot(313);
stem(k,rxy);



