M = [1 1 1; 1 0 1; -1 0 0];
base = eye(size(M)); % ma tran don vi  = [1 0 0; 0 1 0; 0 0 1];
Minv = M\base;
disp(Minv);