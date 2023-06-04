% Tao chuoi bit ngau nhien co do dai 5000 bits
bits = randi([0 1], 1, 5000);

% Chuyen doi chuoi bit nay thanh dang song ma duong NRZ luong cuc
nrz_waveform = 2 * bits - 1;

% Toc do bit (bit/s)
bit_rate = 100e6;

% Chu ky bit (s)
bit_period = 1 / bit_rate;

% Lay mau tin hieu
sample_rate = 12 * bit_rate;
t = (0:(length(bits) * 12 - 1)) / sample_rate;
sampled_nrz_waveform = kron(nrz_waveform, ones(1, 12));

% Bo loc raised cosine
bandwidth = 300e6;
rolloff = 0.5;
filter_span = 6;
sps = sample_rate / bit_rate;
raised_cosine_filter = rcosdesign(rolloff, filter_span, sps);

% Loc chuoi tin hieu NRZ
filtered_signal = conv(sampled_nrz_waveform, raised_cosine_filter, 'same');

% Ve bieu dien dang song tin hieu tren 10 chu ky bit truoc va sau khi loc tin hieu
figure;
subplot(211);
plot(t(1:120), sampled_nrz_waveform(1:120));
title('Dang song NRZ truoc khi loc');
xlabel('Thoi gian (s)');
ylabel('Gia tri');
subplot(212);
plot(t(1:120), filtered_signal(1:120));
title('Dang song sau khi loc bang bo loc raised cosine');
xlabel('Thoi gian (s)');                              
ylabel('Gia tri');

% Ve bieu do mat cua tin hieu sau khi loc tren cua so 2 chu ky bit
eyediagram(filtered_signal, 2 * sps);
title('Bieu do mat sau khi loc');