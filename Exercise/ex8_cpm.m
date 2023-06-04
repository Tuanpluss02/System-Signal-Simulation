C = [1 2 3 4 10; -22 1 11 -12 4; 8 1 6 -11 5; 18 1 11 6 4];

for i = 1:4
    for j = 1:5
        if C(i,j) > 10 || C(i,j) < -10
            C(i,j) = 0;
        end
    end
end

% C(C>10 | C< -10) = 0;

disp(C)

           
         
    