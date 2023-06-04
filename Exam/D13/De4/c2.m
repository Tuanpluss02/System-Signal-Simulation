clear all;
h = 0.25;
t = 0:h:1;
y = zeros(size(t));
y(1) = 0;
f = @(t,y) -y + 2;

for i = 1:length(t) -1
    y(i +1) = y(i) + h * f(t(i), y(i));
end

plot(t,y);


