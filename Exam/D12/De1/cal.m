function kq = cal()
f = @(x) 3*x^4 - 7*x^2 + 2*x + 2;
x1  = -1;
x2 = 2;
sai_so = 0.0005;
while abs(x2 - x1) > sai_so
    mid = (x1 + x2 )/2;
    fx1 = f(x1);
    fx2 = f(x2);
    fmid = f(mid);
    
    if fx1 * fmid < 0
        x2 = mid;
    else if fx2 * fmid < 0
           x1 = mid;
    else
            break;
    end
     
    end
kq = (x1+x2)/2;
end