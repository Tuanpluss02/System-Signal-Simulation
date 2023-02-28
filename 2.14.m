n = -10:10;
x = randn(size(n));
y = n.*x;
ynk = [0 0 0 0 y];
x1 = [0 0 0 0 x];
n1 = [n 11:14];
yn = n1.*x1;
subplot(211), stem(n1,ynk), title(‘y(n - k)’);
subplot(212), stem(n1,yn), title(‘H[x(n – k)]’);