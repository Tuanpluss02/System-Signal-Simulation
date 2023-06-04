clear all;

T = 10;       
t = 0:0.01:10; 
x = square(2*pi*t/T); 
plot(t,x) 
axis([0 20 -2 2])
title('Tín hi?u NRZ')

H = @(f) exp(-(f.^2)/2);   

% c) Ph? tín hi?u sau b? l?c 
f = -T/2:T/(length(t)-1):T/2-T/(length(t)-1);  % M?ng t?n s?
Y = fftshift(fft(x,length(f)));      % Ph? X(f) v?i ?? dài b?ng ?? dài f    
H_f = H(f);                         % H(f)
Y_f = Y.*H_f;                       % Y(f) = H(f)X(f) 
y = ifft(ifftshift(Y_f));           % Tr? v? mi?n th?i gian

plot(t,real(y)) 
title('Tín hi?u t?i ??u ra b? l?c Gauss')