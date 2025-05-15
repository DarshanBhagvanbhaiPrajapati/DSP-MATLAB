%23BIT064
% PART B
disp('PART B')

% Defining function
syms x y 
f = symfun(x^2 + 4*x*y + y^2, [x, y]);

% Finding value for x = 5, y = 6
disp('Value of f when x = 5, y = 6:')
f(5,6)

%23BIT064
% PART C
disp('PART C')

% Finding differentiation
F = diff(f, x);

% Output
disp('Derivative of f(x,y) with respect to x:')
disp(F)

%23BIT064
% PART D
disp('PART D')

% Finding integration
F = int(f, x);

% Output
disp('Integration of f(x,y) with respect to x:')
disp(F)

%23BIT064
% PART E
disp('PART E')

% Finding integration
F = int(f, x, 0, 2);

% Output
disp('Integration of f(x,y) with respect to x:')
disp(F)

%23BIT064
% PART F
disp('PART F')

F = subs(f, [x, y], [3, 2]);

% Finding value for x = 3, y = 2
disp('Value of f when x = 3, y = 2:')
disp(F)

%23BIT064
% PART G
disp('PART G')

tic; % Time Start

% Starting Iteration
for i = 1 : 50
    a = diff(f, x);
    b = int(f, x);
    c = int(f, x, 0, 20);
    d = subs(f, [x,y], [10,20]);
end
% Iteration End

et = toc; % Time Stop

disp('Execution time for 50 iterations:')
disp(et)