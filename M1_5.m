clf;
x = input('Nhap day tin hieu x: ');
h = input('Nhap day tin hieu h: ');
d = input('Nhap do tre: ');

y = conv(x,h);
subplot(211);
stem(y);

y_d = [zeros(1,d) y];
n = 0:length(y)+d-1;
subplot(212);
stem(n,y_d);