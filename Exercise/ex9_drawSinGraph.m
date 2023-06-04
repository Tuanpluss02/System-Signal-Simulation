t = 0:0.1:10;
s = sin(2*pi*5*t).*cos(2*pi*3*t) + exp(-0.1*t);
plot(t,s);