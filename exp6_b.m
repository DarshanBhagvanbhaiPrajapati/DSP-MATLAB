% Darshan Prajapati
% 23BIT064
% Experiment - Deconvolution using Z-Transform

syms z n

% Define the signals x(n) and h(n)
x = (0.4)^n; % x(n) = (0.4)^n * u(n)
h = (0.5)^n; % h(n) = (0.5)^n * u(n)

% Compute the Z-transform of x(n) and h(n)
X_z = ztrans(x, n, z); % Z-transform of x(n)
H_z = ztrans(h, n, z); % Z-transform of h(n)

% Perform convolution in Z-domain (multiplication)
Y_z = X_z * H_z; % Y(z) = X(z) * H(z)

% Perform deconvolution in Z-domain (division)
X1_z = Y_z / H_z; % X1(z) = Y(z) / H(z)

% Compute the inverse Z-transform to get x1(n)
x1_n = iztrans(X1_z, z, n);

% Display results
disp('Z-transform of x(n):');
disp(X_z);

disp('Z-transform of h(n):');
disp(H_z);

disp('Z-transform of y(n):');
disp(Y_z);

disp('Recovered Z-transform X1(z):');
disp(X1_z);

disp('Inverse Z-transform x1(n):');
disp(x1_n);

% Plot the recovered signal x1(n) for a finite range
n_vals = 0:20; % Define a range for n
x1_vals = double(subs(x1_n, n, n_vals)); % Evaluate x1(n) for the range

figure;
stem(n_vals, x1_vals, 'm', 'LineWidth', 1.5);
title('Recovered Signal x1(n) using Deconvolution');
xlabel('n');
ylabel('Amplitude');
grid on;
