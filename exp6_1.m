% Darshan Prajapati
% 23BIT064
% Experiment - Convolution using Z-Transform

syms z n k

% Define the signals x(n) and h(n)
x = (0.4)^n; % x(n) = (0.4)^n * u(n)
h = (0.5)^n; % h(n) = (0.5)^n * u(n)

% Compute the Z-transform of x(n) and h(n)
X_z = ztrans(x, n, z); % Z-transform of x(n)
H_z = ztrans(h, n, z); % Z-transform of h(n)

% Perform multiplication in Z-domain (convolution property)
Y_z = X_z * H_z; % Y(z) = X(z) * H(z)

% Compute the inverse Z-transform to get y(n)
y_n = iztrans(Y_z, z, n);

% Display results
disp('Z-transform of x(n):');
disp(X_z);

disp('Z-transform of h(n):');
disp(H_z);

disp('Z-transform of y(n):');
disp(Y_z);

disp('Inverse Z-transform y(n):');
disp(y_n);

% Plot the result y(n) for a finite range
n_vals = 0:20; % Define a range for n
y_vals = double(subs(y_n, n, n_vals)); % Evaluate y(n) for the range

figure;
stem(n_vals, y_vals, 'g', 'LineWidth', 1.5);
title('Convolution Result y(n) using Z-Transform');
xlabel('n');
ylabel('Amplitude');
grid on;
