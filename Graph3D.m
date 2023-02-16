x = -3:0.1:3;
y = (-3:0.1:3)';
v = ones(length(x),1);
X = v*x;
Y = y*v';
f = sin(X.^2 + Y.^2).*exp(-0.2*(X.^2 + Y.^2));
subplot(311)
mesh(x,y,f);
mxf = max(max(f));
mif = min(min(f));
axis([-3 , 3, -3, 3, mif, mxf])
xlabel('x-axis');
ylabel('y-axis');
subplot(313)
surf(x,y,f)
axis([-3 , 3, -3, 3, mif, mxf])
xlabel('x-axis');
ylabel('y-axis');

subplot(312)
contour3(x,y,f,90)
axis([-3 , 3, -3, 3, mif, mxf])
xlabel('x-axis');
ylabel('y-axis');
