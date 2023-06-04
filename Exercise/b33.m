clc;
clear;
% Tan so lay mau
fs = 20; 

% Thoi gian mau hoa
dt = 1/fs; 

% Tao mot mang thoi gian tu 0 den 1 giay voi khoang cach mau hoa dt
t = 0:dt:1;

% Tin hieu goc
x = 2*cos(4*pi*t);

% So muc luong tu
n = 8;

% Tinh gia tri dinh va day cua tin hieu de tao ra cac muc luong tu
Vmax = max(x);
Vmin = min(x);

% Khoang cach giua cac muc luong tu
q = (Vmax - Vmin)/(2^n);

% Tinh gia tri luong tu cho tung mau
for i = 1:length(x)
    % Tinh vi tri cua gia tri luong tu tren truc y
    j = floor((x(i) - Vmin)/q) + 1;
    % Neu gia tri luong tu vuot qua gioi han, dua no ve gioi han toi da hoac toi thieu
    if j > 2^n
        j = 2^n;
    elseif j < 1
        j = 1;
    end
    % Tinh gia tri luong tu tuong ung
    y(i) = Vmin + (j-1)*q + q/2;
end

% Tu ma dau ra cua 5 mau dau tien
y_first_five = y(1:5);

% Ve bieu do cua tin hieu goc, tin hieu duoc lay mau va tin hieu duoc luong tu hoa
subplot(3,1,1)
plot(t,x,'b')
title('Tin hieu goc')
xlabel('Thoi gian (s)')
ylabel('Bien do')
grid on

subplot(3,1,2)
stem(t,x,'r')
title('Tin hieu duoc lay mau')
xlabel('Thoi gian (s)')
ylabel('Bien do')
grid on

subplot(3,1,3)
stem(t,y,'k')
title('Tin hieu duoc luong tu hoa')
xlabel('Thoi gian (s)')
ylabel('Gia tri luong tu')
grid on