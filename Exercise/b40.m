% Tao chuoi ky tu ngau nhien co do dai 1000 ky tu
N = 1000;
data = randi([0 1], 1, N);

% Dieu bien BPSK
bpsk_modulated_data = 2 * data - 1;

% Su dung xung raised cosine
T = 1 / 10e6; % Chu ky (Toc do 10 Mb/s)
oversampling = 8; % So mau tren moi bit
t = 0:T/oversampling:T-T/oversampling;
pulse_shape = (1 - cos(2 * pi * t / T));

% Bieu dien dang song duong bao phuc cua tin hieu dieu bien BPSK
bpsk_waveform = conv(upsample(bpsk_modulated_data, oversampling), pulse_shape);

% Buoc 4: Ve dang pho cua tin hieu duoc dieu bien
Fs = 10e6 * oversampling; % Tan so lay mau
NFFT = 2^ceil(log2(length(bpsk_waveform))); % Do dai FFT
bpsk_spectrum = fftshift(fft(bpsk_waveform, NFFT));

frequencies = (-NFFT/2:NFFT/2-1) * Fs / NFFT; % Tan so tuong ung

figure;
subplot(211);
plot(bpsk_waveform);
title('Dang song BPSK');
xlabel('Thoi gian');
ylabel('Bien do');

subplot(212);
plot(frequencies, 20*log10(abs(bpsk_spectrum)));
title('Dang pho cua tin hieu BPSK');
xlabel('Tan so (Hz)');
ylabel('Bien do (dB)');