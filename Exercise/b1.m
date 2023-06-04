xn = input('Nhap tin hieu x: ');
x_n=fliplr(xn);
Xeven=(1/2)*(xn+x_n);
Xodd=(1/2)*(xn-x_n);
subplot(211);
stem(Xeven); title(' thanh phan chan');
subplot(212); 
stem(Xodd); title('thanh phan le ');