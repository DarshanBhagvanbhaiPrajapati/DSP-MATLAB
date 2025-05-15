% Experiment 1 23BIT064

% A) COmpute the following quantities at the command prompt

% 1) 2^5/(2^5-1)

qn1 = 2^5/(2^5-1);

disp(['The answer of qn1 is: ',num2str(qn1)]); 

% 2) 3(root5 - 1)/(root5+1)^2 - 1
  
qn2 = 3 * (sqrt(5) - 1) /(sqrt(5) + 1)^2 - 1;

disp(['The value of qn2 is: ', num2str(qn2)]);

%3)ln(e^3) + log(e^3) + log(10^3)
qn3 = log10(exp(3)) + log10(exp(3)) + log10(10^3);
disp(['The value of qn3 is: ', num2str(qn3)]);

%4) e^pi(root163) + sin^2(pi/6)
qn4 = exp(pi * sqrt(163)) + sin(pi / 6)^2;

disp(['The value of qn4 is: ', num2str(qn4)]);

%5) 1+j3/1-j3

qn5 = (1 + 1i * 3) / (1 - 1i * 3);
disp(['The value of qn5 is: ', num2str(qn5)]);

%6) e^pij/4
qn6 = exp(pi * i/4);
disp(['The value of qn6 is: ', num2str(qn6)]);