function kq =  mid()
    f = @(x) x^3 + exp(x);
    N = 50;
    kq = 0;
    s = 1;
    e = 4;
    h = (e - s) /N;
    idx = 0;
    while (idx <= N)
        x = s + (idx - 1/2)*h;
        fx = f(x);
        kq = kq + fx;
        idx = idx + 1;
    end
    kq = kq * h;
end
