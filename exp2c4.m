% 23BIT064
%iv)sinosoidal sequence , x1[n] = cos(pi/10n);

clear;
n = 0:40;
x1 = cos(pi/10 * n);

figure;

stem(n,x1,'filled');
xlabel('Discrete Time (n)');
ylabel('x_1[n]'); 
title('Sinusoidal Sequence x1[n] = (cos\pi/10 * n)');
grid on; 

