A = [1 2; 3 4; 5 6];
B = [11, 24; 39, 56; 75, 96];        
C = [1 1; 2 2];

A*C

A.*B  % element-wise multiplication

A.^2  % element-wise power to two

A'  % is the transpose of matrix A

A = magic (3); % creates a 3x3 magical matrix (all cols, rows and diagonals adds up to the same value)
max (A);  % gets the max value column wise is the same as max(A, [], 1)

max (A, [], 2);  % gets the max value row wise

find (A >= 7);  % finds the values that  are greater than 4 on matrix A