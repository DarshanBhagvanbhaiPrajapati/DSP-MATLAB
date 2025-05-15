
% Exp-9 (i), To Exploring DFT,FFT and Circular Convoltion
function [X] = compute_dft(x, N)
    x = reshape(x,1,[]);
    x = [x zeros(1, N-length(x))]; % Zero padding
    X = zeros(1,N);
    % write your code here
    for k = 0:N-1
        for n = 0:N-1
            X(k+1) = X(k+1) + x(n+1) * exp(-1j * 2 * pi * k * n / N);
        end
    end
end

