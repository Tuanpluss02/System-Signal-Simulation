clf;
x = [0 1 2 3 4 5 6 7 8 9];
M=5;
N = length(x)-1; 
n = 0:N;
%y = circshift1(x,5);
y = circshift(x,[1,-M]);
XF = fft(x);
YF = fft(y);subplot(2,2,1)
stem(n,abs(XF)); grid
title('Magnitude of DFT of Original Sequence');
subplot(2,2,2)
stem(n,abs(YF)); grid
title('Magnitude of DFT of Circularly ShiftedSequence');
subplot(2,2,3)
stem(n,angle(XF)); grid
title('Phase of DFT of Original Sequence');
subplot(2,2,4)
stem(n,angle(YF)); grid
title('Phase of DFT of Circularly Shifted Sequence');
clf;
N = 32; 
x = randn(1,N); 
y = fft(x,N); 
x1 = ifft(y,N); 
subplot(321),stem(abs(x)); 
title('x(n)');xlabel('n'); 
subplot(323),stem(abs(y)); 
title(['FFT(n,' N ')']);xlabel('k');ylabel('Bien do'); 
subplot(324),stem(angle(cxzczxcy)); 
title(['FFT(n,' N ')']); xlabel('k');ylabel('Pha'); 
subplot(325),stem(abs(x1)); 
title(['IFFT(FFT(n,' N '))']); 
xlabel('k');ylabel('Bien do'); 
subplot(326),stem(angle(x1)); 
title(['IFFT(FFT(n,' N '))']); 
xlabel('k');ylabel('Pha');