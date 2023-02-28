% x = 3*cos(100*pi*t);
% a) Tìm t?n s? l?y m?u nh? nh?t có th? mà không b? m?t thông tin.
f = 50;
Fs1 = 2*f; %Tan so lay mau nho nhat Fs1 = 100
T1 = 1/Fs1;
n1 = 0:T1:1;
L1 = 0:length(n1)-1;
x_a = 3*cos(100*pi*n1); %x_a = 3cos(100pi/50) = 3cos(2pi)
subplot(321);
plot(n1,x_a);
axis([0 0.5 -4 4]);
subplot(322);
stem(L1,x_a);
axis([0 50 -4 4]);
    
%b) Gi? s? tín hi?u ???c l?y m?u ? t?n s? Fs = 200 Hz. Tìm tín hi?u l?y m?u
Fs2 = 200;
T2 = 1/Fs2;
n2 = 0:T2:1;
L2 = 0:length(n2)-1;
x_b = 3*cos(100*pi*n2);% x_b = 3cos(100pi/200) = 3cos(pi/2)
subplot(323)
plot(n2,x_b);
axis([0 0.25 -4 4]);
subplot(324);
stem(L2,x_b);
axis([0 50 -4 4]);

% Gi? s? tín hi?u ???c l?y m?u ? t?n s? Fs = 75 Hz. Tìm tín hi?u l?y m?u
Fs3 = 75;
T3 = 1/Fs3;
n3 = 0:T3:1;
L3 = 0:length(n3)-1;
x_c = 3*cos(100*pi*n3); %  x_c = 3cos(100pi/75) = 3cos(2pi/3)
subplot(325)
plot(n3,x_c);
axis([0 0.25 -4 4]);
subplot(326);
stem(L3,x_c);
axis([0 50 -4 4]);
