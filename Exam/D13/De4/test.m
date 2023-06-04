% ??nh ngh?a c�c th�ng s?
T = 10;         % Chu k? bit
fs = 1000;      % T?n s? l?y m?u
fc = 50;        % T?n s? c?t c?a b? l?c Gauss
N = 1000;       % S? m?u trong t�n hi?u

% T?o t�n hi?u ??u v�o NRZ
x = [ones(1, N/2), -ones(1, N/2)];

% V? d?ng s�ng t�n hi?u ??u v�o
t = linspace(0, T, N);
subplot(3,1,1);
plot(t, x);
title('T�n hi?u ??u v�o NRZ');

% T�nh to�n h�m truy?n ??t c?a b? l?c Gauss
f = linspace(-fs/2, fs/2, N);
H = exp(-(f.^2) / (2*fc^2));

% �p d?ng b? l?c Gauss
y = ifft(fft(x).*H);

% V? d?ng s�ng t�n hi?u ??u ra
subplot(3,1,2);
plot(t, real(y));
title('T�n hi?u ??u ra sau khi �p d?ng b? l?c Gauss');

% V? ph? t�n hi?u ??u v�o v� ??u ra
subplot(3,1,3);
plot(f, abs(fftshift(fft(x))));
hold on;
plot(f, abs(fftshift(fft(y))));
title('Ph? t�n hi?u ??u v�o v� ??u ra');
legend('??u v�o', '??u ra');