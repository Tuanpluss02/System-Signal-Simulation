smin=100;
fs1=200;
fs2=75;
n=0:127;
x1=3*cos(100*pi*n/fsmin);
x2=3*cos(100*pi*n/fs1);
x3=3*cos(100*pi*n/fs2);
%muon co tin hieu co cung 1 ket qua lay mau thi w3+w4=2pi
%=>w4=2pi-4pi/3=2pi/3 =>fs4=150Hz
x4=3*cos(100*pi*n/150);
subplot(4,1,1);
stem(n,x1);
title('câu a');
subplot(4,1,2);
stem(n,x2);
title('câu b');
subplot(4,1,3);
stem(n,x3);
title('câu c');
subplot(4,1,4);
stem(n,x4);
title('câu d')