clc
N = 5;
num = [2.25 2.5 2.25];
den = [1 -0.5 0.75];
h = impz(num,den,N);
subplot(211);
stem(h);
title('Impulse response');
N = 100;
h = impz(num,den,N);
subplot(212);
stem(h);
title('Impulse response');