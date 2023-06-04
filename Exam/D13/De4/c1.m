A = [1 1j-3 -3; 4j -4.5 2; 2 -3 1j + 5];
B = A;
[row, col] = size(A);
for i = 1:row
    for j = 1: col
        if i == j
            B(i,j) = 0;
        end
    end
end
