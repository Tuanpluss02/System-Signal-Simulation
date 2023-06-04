clear;
T = 1;
t = 0:0.1:5*T;
xt = zeros(length(t));
index = 0;
Tth = 0;
for i = 1:length(t)
    if t(i) > Tth  &&  t(i) < 1 + Tth
        xt(i) = exp(i);
    end
    if t(i)  == T + Tth
        index = index + 1;
        Tth = T*index;
    end
end

plot(t, xt)

