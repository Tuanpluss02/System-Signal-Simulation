b0 = 0.05634;
b1 = [1 1];
b2 = [1 -1.0166 1];
a1 = [1 -0.683];
a2 = [1 -1.4461 0.7957];
b = b0*conv(b1,b2);
a = conv(a1,a2);
[r,p,k] = residuez(b,a)