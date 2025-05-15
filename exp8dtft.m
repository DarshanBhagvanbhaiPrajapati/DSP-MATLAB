% exp_8 A) FUNCTION EXP8DTFT
% MATLAB Code for Part a: DTFT Function Implementation

function X = exp8dtft(x, n, omega)
    % DTFT computation using summation formula
    % x: Signal values
    % n: Time indices of the signal
    % omega: Frequency range (-pi to pi)
    
    % Input validation
    if nargin < 3
        error('Not enough input arguments. Required: x, n, omega');
    end
    
    % Initialize DTFT result
    X = zeros(1, length(omega)); 
    
    % Compute DTFT at each frequency
    for k = 1:length(omega)
        X(k) = sum(x .* exp(-1j * omega(k) * n)); 
    end
end
