%23BIT064
% Define the range for n
n = -10:10; 

% Generate the unit step sequence
u = (n >= 0); 

% Create a new figure
figure; 

stem(n, u, 'filled'); 
xlabel('Discrete Time (n)'); 
ylabel('u[n]'); 
title('Unit Step Sequence u[n]'); 
grid on; 
axis([-10 10 -0.5 1.5]); 
