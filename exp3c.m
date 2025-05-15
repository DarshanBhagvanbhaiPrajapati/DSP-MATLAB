%23bit064
% Use MyConv to prove the convolution operator , community property
x = [5, 6, 7];
h = [1, 3, 4];

y1 = MyConv(x, h);

% convolution in the reverse order
y2 = MyConv(h, x);

% Display the results
disp('Convolution of x and h (y1):');
disp(y1);
disp('Convolution of h and x (y2):');
disp(y2);

if isequal(y1, y2)
    disp('The convol  is commu');
else
    disp('The convol is not commu');
end
