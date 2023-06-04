x = -2:0.2:2;
y = -1:0.1:1; 

[X,Y] = meshgrid(x,y);
z = X.^2 + Y.^2;

contour(X,Y,z);