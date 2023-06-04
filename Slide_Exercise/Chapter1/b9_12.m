t = 0:0.1:10;

st1 = sin(2*pi*5*t).*cos(2*pi*3*t) + exp(-0.1*t);
% disp(st1);

st2 = sin(2*pi*5*3*t).*sin(2*pi*5*3*t);
% disp(st2);

st3 = round(20*sin(2*pi*5*t));
disp(st3);

b = [1024 1000 100 2 1];
res = log2(b);
disp(res);
