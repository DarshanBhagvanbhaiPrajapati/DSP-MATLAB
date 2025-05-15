% 23BIT064
% Darshan Prajapati

% Define input sequences
x = [1, 2, 3, 4]; 
h = [1, 1, 1];   

% Find The maximum length for our Circular Convolution
N = max(length(x), length(h));

x = [x, zeros(1, N - length(x))]; % Used Zeroes for making length equal to N
h = [h, zeros(1, N - length(h))]; 

% Circular Convolution Using Built-in Function
y_builtin = cconv(x, h, N);

% Display result
disp('Circular Convolution Result (Built-in cconv):');
disp(y_builtin);

