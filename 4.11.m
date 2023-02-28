clf;
M=4;
x=[0 1 2 3 4 5 6 7 8 9 10];
y=circshift(x,[1,-M])
L=length(x)-1;n=0:L;
subplot(211)
stem(n,x)
title('Day tin hieu goc');
ylabel('Bien do');
subplot(212)
stem(n,y)
title('Day tin hieu thu duoc sau khi dich vong')
ylabel('Bien do')
xlabel('Thoi gian roi rac')