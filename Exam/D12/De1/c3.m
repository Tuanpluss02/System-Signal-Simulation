T = 1;
t = 0:0.05:4*T;
xt = zeros(size(t));
Tth  = 0;
index = 0;

for i= 1:length(t)
    if t(i) > 0 &&  t(i) <= (Tth + T/2) 
        xt(i) = 1;
    end
    
    if t(i) == Tth + T
        index = index + 1;
        Tth =  T *index;
    end
    
    if t(i) > Tth +  T/2 && t(i) < Tth + T
        xt(i)= 0;
    end

end

plot(t,xt, 'LineWidth', 2);