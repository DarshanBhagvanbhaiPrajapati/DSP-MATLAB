%23BIT064
% PART A
disp('PART A')

% Declaring Symbolic Variables
syms x y

% Declaring Symbolic Equations
eq1 = x^2 + y^2 == 25;
eq2 = x + 2*y == 10;
disp('Equation 1: x^2 + y^2 = 25')
disp('Equation 2: x + 2*y = 10')
disp(' ')
[x, y] = solve([eq1, eq2], [x, y]);
disp('Value of x:')
disp(x)
disp('Value of y:')
disp(y)
