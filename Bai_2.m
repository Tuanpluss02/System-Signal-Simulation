%xa = 3cos(2000pi*t) + 5sin(6000pi*t) +10cos(12000pi*t)
% a. Tìm t?n s? Nyquist c?a tín hi?u
f1 = 2000*pi/(2*pi);
f2 = 6000*pi/(2*pi);
f3 = 12000*pi/(2*pi);

FN = 2*max(f1,max(f2,f3));

% b. Gi? s? tín hi?u l?y m?u có t?n s? là Fs=5000 Hz. V? tín hi?u thu ???c
Fs = 5000;
T = 1/Fs;
n = 0:T:1;
L = 0:length(n)-1;
x = 3*cos(2000*pi*n) + 5*sin(6000*pi*n) +10*cos(12000*pi*n);
subplot(211)
plot(n,x);
axis([0 0.05 -20 20]);
subplot(212);
stem(L,x);
axis([0 75 0 15]);
