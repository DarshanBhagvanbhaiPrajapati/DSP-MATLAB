%23bit064
%Myconv to prove Convolution associativity property
x = [1, 7, 3];
h = [4, 8];
g = [6, 9, 2];

y1 = MyConv(MyConv(x, h), g);
y2 = MyConv(x, MyConv(h, g));

disp('Convol of (x * h) * g (y1):');
disp(y1);

disp('Convol of x * (h * g) (y2):');
disp(y2);

% Check if the results are equal
if isequal(y1, y2)
    disp('The convolution is asso');
else
    disp('The convolution is not asso');
end
