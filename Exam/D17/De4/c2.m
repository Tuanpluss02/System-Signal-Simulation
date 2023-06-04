% Cau a
data_bits = randi([0,1], [1,1500]);

%Cau b
nrz_waveform = zeros(1, length(data_bits));

for i = 1:length(data_bits)
    if data_bits(i) == 0
        nrz_waveform((i-1)+1:i) = -1;
    else
        nrz_waveform((i-1)+1:i) = 1;
    end
end


% Cau c
B = 200e6;
n = 2;
fs = 2/T;
fc = B/(2*fs); 
[b, a] = butter(n, fc);
filtered_waveform = filter(b, a, nrz_waveform);

% Cau d
subplot(211)
nrz_waveform = repmat(nrz_waveform,1,5);
plot(nrz_waveform)
title('Truoc khi qua bo loc')

subplot(212)
filtered_waveform =  repmat(filtered_waveform,1,5);
plot(filtered_waveform)
