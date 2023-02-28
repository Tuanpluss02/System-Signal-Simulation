d1=[1 -0.4 -0.05];
d2=[1 -0.1 -0.06];
den2=conv(d1,d2);
num=[1.5 -0.2];
[r,p,k]=residuez(num,den2)
