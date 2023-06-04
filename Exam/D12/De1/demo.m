T = 5; % Kho?ng th?i gian
t = 0:0.01:10*T; % D?i th?i gian

rect = zeros(size(t)); % 
check = 0;
test=0;
for i = 1:length(t)
    if t(i) <= test+2.5
        rect(i)= -1; 
    end
    if t(i) == test+T
        check = check+1;
        test = T*check;
        continue;
    end
    if t(i) > test+2.5
        rect(i) = 0;
    end
end

plot(t, rect, 'LineWidth', 2);