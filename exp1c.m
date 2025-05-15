% Define vectors and matrices
A = [5; 3; -2; 1];
B = [9; 2; 6; 5];
mC = [1, 0, 5, 4; 
      8, 6, 8, 7; 
      3, 15, 1, -9; 
      8, 4, 3, 17];
mD = [4, 8, 1, 13; 
      9, 6, 1, -5; 
      -1, 5, 4, 3; 
      -9, 0, 0, 7];

% Compute the dot product of A and B
dp = dot(A, B);
disp(['Dot product: ', num2str(dp)]);

% Compute part2: Make sure dimensions match
p2 = (mC.' * A) + B; 
disp(['part2: ', num2str(p2.')]);  

% Compute part3
p3 = (inv(mC) * A) + (inv(mD) * B); 

% Ensure p3 is displayed correctly
disp(['result of part3 is : ', num2str(p3', '%.2f')]); 

% Sum of diagonal elements of mC and mD
sumDiag = sum(diag(mC)) + sum(diag(mD));
disp(['Sum of diagonals: ', num2str(sumDiag)]);

% Extract and display the submatrix
subMatrix = mC(2:4, 2:4);
disp('Submatrix:');
disp(subMatrix);