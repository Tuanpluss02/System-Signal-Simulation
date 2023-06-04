close all; clear all;
m=4; No=9;
data=randi(1,1800,m);
dc=qammod(data,m);
Es=5e-5; phi=0; Rs=1e6; fs=20*Rs;
c=1; Ts=1/Rs;
t=0:1/fs:length(dc)*Ts;
for i=1:length(t)
    Tx(i)=dc(c)*sqrt(2*Es/Ts)*exp(1j*phi);
    if(t(i)>=c/Rs)
        c=c+1;
    end
end
nhieu=sqrt(No/2)*(randn(1,length(Tx))+1i*randn(1,length(Tx)));
Rx=Tx+nhieu;
d=1;
for i=1:length(t)
    if abs(t(i)-(d-1/2)/Rs)<=1/(2*fs)
    giaidc(d)=Rx(i)/(sqrt(2*Es/Ts)*exp(1j*phi));
    d=d+1;
    end
end
giaima=qamdemod(giaidc,m);
%muc bien do tin hieu truoc khi qua kenh truyen
plot(t(1:1000),Tx(1:1000));
%muc bien do tin hieu sau khi qua kenh truyen
figure;
plot(t(1:1000),Rx(1:1000));
%bieu do chom sao tin hieu truoc khi qua kenh truyen
scatterplot(dc);
%bieu do chom sao tin hieu sau khi qua kenh truyen
scatterplot(giaidc);
%bieu do mat tin hieu truoc khi qua kenh truyen
eyediagram(Tx,100);
%bieu do mat tin hieu sau khi qua kenh truyen
eyediagram(Rx,100);
