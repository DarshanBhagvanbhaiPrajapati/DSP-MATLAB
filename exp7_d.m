%23BIT064, exp7_d
% i. For F1(z)
num_roots_F1 = roots(num1); 
den_roots_F1 = roots(den1);
figure;
zplane(num_roots_F1, den_roots_F1);

% ii. For F2(z)
num_roots_F2 = roots(num2);
den_roots_F2 = roots(den2);
figure;
zplane(num_roots_F2, den_roots_F2);

% iii. For F3(z)
num_roots_F3 = roots(num3); 
den_roots_F3 = roots(den3); 
figure;
zplane(num_roots_F3, den_roots_F3); 

% iv. For F4(z)
num_roots_F4 = roots(num4); 
den_roots_F4 = roots(den4);
figure;
zplane(num_roots_F4, den_roots_F4);
