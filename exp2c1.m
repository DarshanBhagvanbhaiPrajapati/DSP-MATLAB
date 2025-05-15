%23BIT064
clear;
clc;

% Create a new figure
figure;

n_impulse = -10:10; 

% Unit Impulse Sequence
delta = (n_impulse == 0); 

% Subplot for Unit Impulse Sequence
subplot(5, 1, 1); % 5 rows, 1 column, first plot
stem(n_impulse, delta, 'filled');
xlabel('Discrete Time (n)');
ylabel('\delta[n]');
title('Unit Impulse Sequence \delta[n]');
grid on;
axis([-10 10 -0.5 1.5]);  % Xmax Xmin Ymin Ymin

