w = linspace(-2*pi,2*pi,512);
x1 = [1 3 5 7 9 11 13];
d = 0.4*pi
h1 = freqz(x1,1,w);
l = length(x1);
n = 0:l-1;
x2 = exp(d*i*n).*x1
h2 = freqz(x2,1,w);
subplot(221);
plot(w/pi,abs(h1));grid;
xlabel('omega/pi');
ylabel('bien do');
title('Pho bien do ban dau');
subplot(222);
plot(w/pi,abs(h2));grid;
xlabel('omega/pi');
ylabel('bien do');
title('Pho bien do do dich tan so');
subplot(223);
plot(w/pi,angle(h1));grid;
xlabel('omega/pi');
ylabel('pha');
title('Pho pha ban dau');
subplot(224);
plot(w/pi,angle(h2));grid;
xlabel('omega/pi');
ylabel('pha');
title('Pho pha do dich tan so');



