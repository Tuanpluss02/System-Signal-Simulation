clear all;
h = 0.1;   
t = 0:h:1;
y = zeros(size(t)); 
y(1) = 1;  
f = @(t, y) 1 + 4 * y;

for i = 1:length(t) - 1
    y(i + 1) = y(i) + h * f(t(i), y(i));
end

plot(t, y);
xlabel('t');
ylabel('y');
