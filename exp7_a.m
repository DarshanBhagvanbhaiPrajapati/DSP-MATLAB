% 23BIT064
% i. F1(z)
num1 = 1; 
den1 = [1 -1/2]; 
[r1, p1, k1] = residuez(num1, den1);
disp('Partial Fraction Expansion for F1(z):');
disp('Residues:'), disp(r1);
disp('Poles:'), disp(p1);
disp('Direct Term:'), disp(k1);

% ii. F2(z)
num2 = [1 -3/2]; 
den2 = [1 -5/6 1/6]; 
[r2, p2, k2] = residuez(num2, den2);
disp('Partial Fraction Expansion for F2(z):');
disp('Residues:'), disp(r2);
disp('Poles:'), disp(p2);
disp('Direct Term:'), disp(k2);

% iii. F3(z)
num3 = [1 -13/6 1/3]; 
den3 = [1 -5/6 1/6]; 
[r3, p3, k3] = residuez(num3, den3);
disp('Partial Fraction Expansion for F3(z):');
disp('Residues:'), disp(r3);
disp('Poles:'), disp(p3);
disp('Direct Term:'), disp(k3);

% iv. F4(z)
num4 = [1 -7/3 9/2 -7/3]; 
den4 = [1 -5/6 1/6]; 
[r4, p4, k4] = residuez(num4, den4);
disp('Partial Fraction Expansion for F4(z):');
disp('Residues:'), disp(r4);
disp('Poles:'), disp(p4);
disp('Direct Term:'), disp(k4);
