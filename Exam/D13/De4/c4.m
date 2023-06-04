clc;
clear;
close;
sig = randi([0,1], [1,500]);
xt = pskmod(sig,8);
y_snr = awgn(xt, 9);

sig_demod = pskdemod(y_snr, 8);
scatterplot(xt);

scatterplot(y_snr);

eyediagram(xt,60);

eyediagram(y_snr, 60);

fprintf('So ki tu loi sau khi qua kenh truyen la: %d \n', sum([sig ~= sig_demod]));