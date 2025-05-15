%23BIT064
% exp 7, c)
syms z n;

% i. F1(z)
F1_z = 1 / (1 - 1/2 * z^(-1));
f1_n = iztrans(F1_z, z, n);
disp('Inverse Z-transform of F1(z):');
disp(f1_n);

% ii. F2(z)
F2_z = (z^(-1) - 3/2 * z^(-2)) / (1 - 5/6 * z^(-1) + 1/6 * z^(-2));
f2_n = iztrans(F2_z, z, n);
disp('Inverse Z-transform of F2(z):');
disp(f2_n);

% iii. F3(z)
F3_z = (z^(-1) - 13/6 * z^(-2) + 1/3 * z^(-3)) / (1 - 5/6 * z^(-1) + 1/6 * z^(-2));
f3_n = iztrans(F3_z, z, n);
disp('Inverse Z-transform of F3(z):');
disp(f3_n);

% iv. F4(z)
F4_z = (z^(-1) - 7/3 * z^(-2) + 9/2 * z^(-3) - 7/3 * z^(-4)) / (1 - 5/6 * z^(-1) + 1/6 * z^(-2));
f4_n = iztrans(F4_z, z, n);
disp('Inverse Z-transform of F4(z):');
disp(f4_n);
