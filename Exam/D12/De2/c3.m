clear;
T = 2;
t = 0:0.1:2;
xt = zeros(size(t));
Tth = 0;
count =0;
for i  = 1:length(t)
    if t(i)  > 0 && t(i) < T + Tth
          xt(i) = exp((i));
    end
     if t(i) == T + Tth
        count  = count + 1;
        Tth = T*count;
     end
end
subplot(211)
plot(t,xt)
title('Tin hieu x(t)');

fft_y = fft(xt);
f = 1/T;
freq = fftshift(linspace(-f/2, f/2, length(fft_y)));
subplot(212)
plot(freq ,  fft_y);

% X_mag = abs(fft_y); % Biên ?? c?a ph? Fourier
% X_phase = angle(fft_y); % Pha c?a ph? Fourier
% subplot(211);
% plot(freq, X_mag);
% subplot(212);
% plot(freq, X_phase);
