function kq =  test()
    eps = 0.0005;
    kq = 0;
    x1 = -1;
    x2 = 2;
    f = @(x) 3*x^4 - 7*x^2 + 2*x + 2;
    while abs(x1 - x2) >  eps
        h = (x1 + x2) / 2;
        fx1 = f(x1);
        fx2 = f(x2);
        fh = f(h);
        if fx1*fh < 0
            x2 = h;
        elseif fx2*fh < 0
            x1 = h;
        else
            break;
        end
    end
    kq = (x1+x2)/2;
end