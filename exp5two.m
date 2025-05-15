% MATLAB script to compute exact Z-Transforms

% Clear workspace and command window
clear; clc;

% Define symbolic variable z and n
syms z n;

% Function to compute exact Z-transforms
compute_z_transform = @(F) simplify(ztrans(iztrans(F, z, n), n, z));

% PART i): Z-Transform of F1(z)
F1 = 1 / (1 - (1/2) * z^(-1));
Z_transform_F1 = compute_z_transform(F1);
disp('Z-Transform of F1(z):');
pretty(Z_transform_F1);

% PART ii): Z-Transform of F2(z)
F2 = (1 + z^(-1)) / (1 - z^(-1) + (3/16) * z^(-2));
Z_transform_F2 = compute_z_transform(F2);
disp('Z-Transform of F2(z):');
pretty(Z_transform_F2);

% PART iii): Z-Transform of F3(z)
F3 = (-1 - 0.4*z^(-1)) / (1 - 2.8*z^(-1) + 1.6*z^(-2));
Z_transform_F3 = compute_z_transform(F3);
disp('Z-Transform of F3(z):');
pretty(Z_transform_F3);

% PART iv): Z-Transform of F4(z)
F4 = (1 + 3*z^(-1) + z^(-2) + 2*z^(-3) + 5*z^(-4)) / ...
     (1 - 2*z^(-1) + 3*z^(-2) + z^(-3) + z^(-4));
Z_transform_F4 = compute_z_transform(F4);
disp('Z-Transform of F4(z):');
pretty(Z_transform_F4);