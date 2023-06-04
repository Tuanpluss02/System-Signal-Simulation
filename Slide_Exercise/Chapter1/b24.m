f = @(y) 1 - y;
y(1) = 0;
h = 0.25;
t1 = 1;
t2 = 2;
N = (t2-t1)/h;
for i = 2:N
    y(i) = y(i - 1) + f(y(i-1))*h; 
end
plot(x,y);

tspan = [t1 t2];
[yres] = ode45(@(y)1-y,tspan,0);
plot(yres)

