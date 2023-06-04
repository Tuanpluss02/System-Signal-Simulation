% Tan so song mang
fc = 300;

% Thoi gian mau hoa
dt = 0.001;

% Tao mot mang thoi gian tu 0 den 1 giay voi khoang cach mau hoa dt
t = 0:dt:1;

% Tin hieu ban tin
s = 2*cos(20*pi*t*pi/4) + cos(30*pi*t);

% Song mang
c = cos(2*pi*fc*t);

% Tin hieu dieu che
x = (1 + s/max(abs(s))) .* c;

% Ve dang song tin hieu ban tin ban dau va tin hieu dieu che
subplot(2,1,1)
plot(t,s,'b')
title('Tin hieu ban tin ban dau') 
xlabel('Thoi gian(s)') 
ylabel('Bien do') 
grid on

subplot(2,1,2)
plot(t,x,'r')
title(' Tin hieu dieu che')
xlabel('Thoi gian (s)')
ylabel('Bien do')
grid on

% Giai dieu che tin hieu
y = x .* c;

% Ve dang song tin hieu sau khi duoc giai dieu che
figure
plot(t,y,'k')
title('Tin hieu sau khi giai dieu che')
xlabel('Thoi gian (s)')
ylabel('Bien do')
grid on