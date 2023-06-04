clf;
A = input('Nhap bien do A: ');
L = input('Nhap do dai day xung: ');
T = input('Nhap chu ki cua day: ');
F = input('Nhap tan so lay mau: ');
drx = input('Nhap do rong xung: ');

Ts = 1/F;
t = 1:L;
x = A*sawtooth(2*pi*t/T);
y = A*square(2*pi*t/T,drx);
figure();
subplot(211);
stem(t,x);
subplot(212);
stem(t,y);