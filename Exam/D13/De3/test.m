clear all;
h = 0.1;     
y0 = 1;       

t = 0:h:1; 
y = zeros(size(t));   
y(1) = y0;            

for i = 1:length(t)-1
    k1 = h * (1+4*y(i)); 
    y(i+1) = y(i) + k1;   
end

plot(t,y)       
xlabel('t')
ylabel('y')