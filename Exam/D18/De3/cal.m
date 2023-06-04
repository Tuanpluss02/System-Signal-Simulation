function [kq, N] = cal(h, f ,y0, e)
    a = 3;
    b = 2;
    x(1) = 0;
    y(1) = y0;
    N = abs(b-a)/h;
    kq = [];
    for i = 2:N
        x(i) = x(i-1) + h;
        y(i) = y(i-1) + f(x(i-1),y(i-1))*h;
        kq = [kq y(i)];
    end
    plot(kq);
    hold on;
    plot(min(kq),'r*');
    plot(length(kq),max(kq), 'r*');
end