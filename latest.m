x = linspace(0, 2*pi, 100); 

subplot(3, 1, 1); 
plot(x, sin(x), 'r'); 
xlabel('x');
ylabel('sin(x)');

subplot(3, 1, 2); 
plot(x, cos(x), 'g');
xlabel('x');
ylabel('cos(x)');

subplot(3, 1, 3); 
plot(x, tan(x), 'b'); 
xlabel('x'); 
ylabel('tan(x)');
ylim([-10, 10]); 


