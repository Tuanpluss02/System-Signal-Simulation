clf;

n = 0:100;
x = cos(2*pi*10*n/256) + cos(2*pi*100*n/256);

x_1 = [0.5 0.25 0.82];
y1 = filter(x_1, 1, x);

x_2 = [0.45 0.5 0.4];
y_2 = [1 -0.52 0.45];
y2 = filter(x_2, y_2 ,x);


subplot(211);
plot(n,y1);
title('Dau ra cua he thong y1');

subplot(212);
plot(n,y2);
title('Dau ra cua he thong y2');
