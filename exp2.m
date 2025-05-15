% Darshan P
t = -10:0.01:10;
x = 0.2*t.^2 + 5;
plot(t, x, 'b');
hold on;
n = -10:1:10;
x_dis = 0.2*n.^2 + 5;
plot(n, x_dis, 'ro', 'MarkerFaceColor', 'r');
xlabel('Time (t)');
ylabel('x(t)');
title('Continuous  Function x(t) = 0.2t^2 + 5 with Discrete Points');
grid on;
hold off;
