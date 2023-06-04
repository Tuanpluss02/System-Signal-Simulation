clear;
input = randi([0,1], [1 10]);
T = 10;
count = 0;
percent = 0.5;
t = 0:1/T:T;
xt = zeros(1, length(t));
for i = 0:length(input)-1
    if input(i+1) == 1
        disp('hello')
        xt(i*count+1:(i+percent)*count) = 1;
        xt((i+percent)*count+1:(i+1)*count) = 0;
    else
        xt(i*count + 1: (i+1)*count) = 0;
    end
    count = count + 1;
end

plot(t,xt)
title('Tin hieu truoc khi qua bo loc')
axis([-1 11 -2 2])

% Phan b
Ns = length(xt);
% Frequency domain
Ts = 1;
B = 3;
n = length(input);
f = [0:Ns/2-1 -Ns/2:-1]/(Ns*Ts);
Xf = fft(xt);
Hf = 1./(1+(f./B).^(2*n)); % transfer func.
Yf = Xf.*Hf;
% Convert into time domain
y = ifft(Yf);

