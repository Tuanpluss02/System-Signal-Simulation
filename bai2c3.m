%3.12
b = 1;
a = [1 -0.9];
len = impzlength(b,a);
[h,t] = impz(b,a);
stem(t,h)
h(len)
%3.14
num=[0.85 0.1];
den=[1 -0.4 -0.05];
[r,p,k]=residuez(num,den)
%3.15
num=[0.85 0.1];
den=[1 -0.4 -0.05];
[Y,T]=impz(num,den,20)
