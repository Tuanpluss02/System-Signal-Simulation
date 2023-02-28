% Day tin hieu hinh sin y(n) = A*cos(wo * n + phi);
clf;
fprintf('Day tin hieu hinh sin y(n) = A*cos(wo * n + phi)\n');
L = input('Nhap chieu dai cua day: ');
A = input('Nhap bien do: ');
wo = input('Nhap tan so goc: ');
phi = input('Nhap goc pha: ');

n = 0: L-1;
y = A*cos(wo*n + phi);
subplot(211);
stem(n,y);

% Day tin hieu dieu bien
fprintf('\nDay tin hieu dieu bien\n');
m = input('Nhap he so dieu bien: ');
fc = input('Nhap tan so song mang: ');
f = input('Nhap tan so tin hieu: ');
L = input('Nhap chieu dai day tin hieu: ');

n = 0: L-1;
y = ((m*sin(2*pi*f*n)+1)).*sin(2*pi*fc*n);
subplot(212);
stem(n,y);