clear;
clc;

A = [1-1i -5 i 0 2+3i; 3 9 22 -31i -7; -8i -8+2i 5 35 -10i; 0 3+19i 0  -73 -8; 7+13i -103 39 3+53i 99];
Acv = A';
B = abs(A);
C = B(:)';
m = sum(C)/length(C);
D = C(C > m);
