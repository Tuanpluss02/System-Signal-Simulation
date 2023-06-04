clear;
close;
clc;

sig = randi([0,1], [1,200]);
st = qammod(sig, 16);
y_snr = awgn(st, 10);

sig_demod = qamdemod(y_snr, 16)

scatterplot(st);
scatterplot(y_snr)

eyediagram(st,20)
eyediagram(y_snr,20)

sai_so = sum([sig ~= sig_demod])