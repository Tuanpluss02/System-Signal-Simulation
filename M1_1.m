% Xung don vi
clf;
n = -10:20;
delta = [zeros(1,10) 1 zeros(1,20)];
subplot(321);
stem(n,delta);
grid on;
axis([-10 20 0 1.2]);

% Xung nhay don vi
n1 = [zeros(1,10) ones(1,21)];
subplot(322);
stem(n,n1);

% Xung chu nhat co do dai L
% L = input('nhap do dai L\n');
L = 10;
arr = [zeros(1,10) ones(1,L) zeros(1,20-L+1)];
subplot(323);
stem(n,arr);

% Day doc don vi
n = -5:10;
arr2 = [zeros(1,5) 0:10];
subplot(324);
stem(n,arr2);

% Day ham mu thuc x = 0.2.(1.5)^n
n = -10:10;
x = 0.2*(1.5).^n;
subplot(325);
stem(n,x);

% Day ham mu ao
n = 0:40;
mu = ((-1/12)+ 1i*pi/6);
y = 2*exp(mu*n);
subplot(326);
% stem(n,real(y));% phan thuc
stem(n,imag(y)); % phan ao


