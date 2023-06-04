a = 3;
b = 2;
f = 150;
T = 1/f;
t = 0:0.00002:6*T;
st = 3*(sin(100*a*pi*t + pi/2)).^2;
plot(t,st)
hold on;

tt = 0:0.01:6*T;
xt = 3*(sin(100*a*pi*tt + pi/2)).^2;
stem(tt,xt)




