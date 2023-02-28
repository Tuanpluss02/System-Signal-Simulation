clf;
N = input('Nhap chieu dai dap ung xung: ');
a = input('Nhap cac he so cua x: ');
b = input('Nhap cac he so cua y: ');

n = 0:N;
h = impz(a,b,N+1);
% sum = 0;
for k=1:N+1;
    %sum = sum + abs(h(k));
    if abs(h(k)) < 10^(-6), break,end
end
stem(n,h);
fprintf('Tong la: %.4d\n', h(k));

