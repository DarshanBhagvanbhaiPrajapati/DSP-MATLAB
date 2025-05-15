% 23BIT064
% iv) sinc sequence , sinc(n/10) = sin(pin/10)/(pin/10);
n = -40:40; 

sinc = sin(pi * n / 10) ./ (pi * n / 10);  

% Handle the case when n = 0 to avoid division by zero
sinc(n == 0) = 1; 
figure;

stem(n, sinc, 'filled'); 
xlabel('Discrete Time (n)'); 
ylabel('sinc(n/10)'); 
title('sinc(n/10) ..'); 
grid on; 
axis([-40 40 -0.2 1.2]);
