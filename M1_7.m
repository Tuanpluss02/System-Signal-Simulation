clf;
x = input('Nhap day tin hieu thu nhat: ');
y = input('Nhap day tin hieu thu hai: ');

rxy = conv(x,wrev(y));
n = (-(length(x)-1)):(length(y)-1);

subplot(311);
stem(x);
title('Day tin hieu thu nhat');
subplot(312);
stem(y);
title('Day tin hieu thu hai');
subplot(313);
stem(n,rxy)
title('Tuong quan cheo');
