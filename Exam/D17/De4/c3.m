clear;
% Cau a
f = 200;
T = 1/f
t = 0:(5*T)/100:5*T;
mt = sin(2*pi*t) + 3*cos(4*pi*t)
y_awgn = awgn(mt, 5);

subplot(211)
plot(t,mt);
title('Ban dau')

subplot(212)
plot(t,y_awgn);
title('Sau khi qua kenh AWGN')