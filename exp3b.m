% Exp-3, Part B
%23bit064

% x has length 5
x = [4 6 9 2 4];
% h has length 4
h = [2 5 1 3 6];

y1 = MyConv(x,h);
y2 = conv(x,h); % inbuilt function 

disp('By usr-defined MyConv() Function:')
disp(y1)

disp('BY in-build conv() Functions:')
disp(y2)

