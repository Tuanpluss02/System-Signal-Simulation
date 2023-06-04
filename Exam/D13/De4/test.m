% ??nh ngh?a các thông s?
T = 10;         % Chu k? bit
fs = 1000;      % T?n s? l?y m?u
fc = 50;        % T?n s? c?t c?a b? l?c Gauss
N = 1000;       % S? m?u trong tín hi?u

% T?o tín hi?u ??u vào NRZ
x = [ones(1, N/2), -ones(1, N/2)];

% V? d?ng sóng tín hi?u ??u vào
t = linspace(0, T, N);
subplot(3,1,1);
plot(t, x);
title('Tín hi?u ??u vào NRZ');

% Tính toán hàm truy?n ??t c?a b? l?c Gauss
f = linspace(-fs/2, fs/2, N);
H = exp(-(f.^2) / (2*fc^2));

% Áp d?ng b? l?c Gauss
y = ifft(fft(x).*H);

% V? d?ng sóng tín hi?u ??u ra
subplot(3,1,2);
plot(t, real(y));
title('Tín hi?u ??u ra sau khi áp d?ng b? l?c Gauss');

% V? ph? tín hi?u ??u vào và ??u ra
subplot(3,1,3);
plot(f, abs(fftshift(fft(x))));
hold on;
plot(f, abs(fftshift(fft(y))));
title('Ph? tín hi?u ??u vào và ??u ra');
legend('??u vào', '??u ra');