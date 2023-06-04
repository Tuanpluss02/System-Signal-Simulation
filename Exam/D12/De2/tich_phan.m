function kq  = tich_phan(f ,N,a, b)
    kq = 0;
    h = abs(b - a)/N;
    index = 0;
    while(index <= N)
        x = a + (index-1/2)*h;
        fx = f(x);
        kq = kq + fx;
        index = index + 1;
    end
    kq = kq * h;
end