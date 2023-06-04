f1=1000;
f2=3000;
f3=6000;
%Tan so Nyquist=2*Tan so lon nhat
%=> fN=2*6000=12000(Hz).
fs=5000;
n=0:127;
x=3*cos(2000*pi*n/5000)+5*sin(6000*pi*n/5000)+10*cos(12000*pi*n/5000);
stem(n,x);