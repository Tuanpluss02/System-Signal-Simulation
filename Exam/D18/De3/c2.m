clear;
idx = 0;
T = 3;
sig = randi([0,1],[1, 3*10]);
percent = 30/100;
t = 0:1/length(sig):length(sig);
xt = zeros(1,length(t));
for i = 0:length(sig) -1
    if sig(i+1) == 1
        xt( round(i*idx + 1): round((i+percent)*idx )) = 1;
        xt( round((i+percent)*idx+1) :round((i+1)*idx )) = 0;
    else
        xt(i*idx + 1:(i+1)*idx) = 0;
    end
    idx = idx + 1;
end
plot(xt)
axis([0 1000 -2 2])