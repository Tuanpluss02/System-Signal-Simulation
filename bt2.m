x = input('Nhap chuoi:');
y = input('Nhap do dai:');
z = fft(x,y);
m = abs(z);
stem(m);