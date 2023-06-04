clc
N = 5;
num = [0.3 0.2 -0.3];
den = [1 0.9 -0.9];
h = impz(num,den,N);
subplot(211);
stem(h);
title('Impulse response');
N = 100;
h = impz(num,den,N);
subplot(212);
stem(h);
title('Impulse response');

