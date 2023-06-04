n = 0:15;
x = cos(n*pi/2);
y = fft(x,8);
m = abs(y);
stem(m);
