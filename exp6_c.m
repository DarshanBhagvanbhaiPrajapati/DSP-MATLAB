clc; clear; close all;

% Input sequences
x = [1, 2, 3, 4];
h = [1, 1, 1];

% Length of sequences
N = max(length(x), length(h));

% Zero-padding
x = [x, zeros(1, N - length(x))];
h = [h, zeros(1, N - length(h))];

disp('Padded Sequences:');
disp('x[n]:'); disp(x);
disp('h[n]:'); disp(h);

% Direct computation of circular convolution
y_direct = zeros(1, N);
for n = 0:N-1
    for k = 0:N-1
        index = mod(n-k, N);
        y_direct(n+1) = y_direct(n+1) + x(k+1) * h(index+1);
    end
end

disp('Circular Convolution Result (Direct Computation):');
disp(y_direct);

% Circular matrix construction and matrix multiplication
H = zeros(N, N);
for i = 1:N
    H(i, :) = circshift(h, [0, i-1]);
end

y_matrix = x * H;

disp('Circular Convolution Result (Matrix Multiplication):');
disp(y_matrix);

% Built-in cconv() function verification
y_builtin = cconv(x, h, N);

disp('Circular Convolution Result (Built-in cconv):');
disp(y_builtin);
