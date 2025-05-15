clc;clear all;
x = [1:99];
valueavg = averag(x);
disp(['The average is: ', num2str(valueavg)]);

function value = averag(x)
    
    value = sum(x) / length(x);
end