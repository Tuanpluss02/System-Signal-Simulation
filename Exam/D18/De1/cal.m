function [kq,mn,mx] = cal(N, f, a,b)
    h = abs(b-a)/N;
    kq = 0;
    idx = 1;
    mn = 1e9;
    mx = -1e9;
    while (idx <= N)
        x = a + (idx - 1/2)*h;
        fx = f(x);
        kq = kq + fx;
        idx = idx + 1;
%         fprintf('%f %f %f\n',mn,mx, fx);
        mn = min(fx, mn);
        mx = max(fx, mx);

    end
%     disp(tmp);
    kq = kq * h;
    mx = mx * h;
    mn = mn * h;
end