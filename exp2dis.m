% 23BIT064
n = -10:1:10;
x = 0.2*n.^2 + 5;
stem(n, x, 'filled');

xlabel('Discrete Time (n)');

ylabel('x[n]');

title('Discrete Time Function x[n] = 0.2n^2 + 5');
grid on;
