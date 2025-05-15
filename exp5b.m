%A
b = 1; 
a = [1, -0.5]; 
% Plot the pole-zero plot
subplot(4,1,1)
zplane(b, a);
title('Pole-Zero Plot');

%B
b=[1, 1];
a=[1, -1, 3/16];
subplot(4,1,2)
zplane(b, a);
title('Pole-Zero Plot');

%C
b=[-1, -0.4];
z=[1,-2.8,1.6];
subplot(4,1,3)
zplane(b, a);
title('Pole-Zero Plot');

%D
b=[1, 3, 1, 2, 5];
z=[1, -2, 3, 1, 1];
subplot(4,1,4)
zplane(b, a);
title('Pole-Zero Plot');
