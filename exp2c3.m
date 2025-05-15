% 23BIT064
%iii)sinosoidal sequence , x1[n] = sin(pi/10n);

clear;
n = 0:40;
x1 = sin(pi/10 * n);

figure;

stem(n,x1,'filled');
xlabel('Discrete Time (n)');
ylabel('x_1[n]'); 
title('Sinusoidal Sequence x1[n] = sin(\pi/10 * n)');
grid on; 

