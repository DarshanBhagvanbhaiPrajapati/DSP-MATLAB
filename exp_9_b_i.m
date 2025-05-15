% exp 9 , CIRCULAR CONVOLUTION 
% i) Define the sequences
x1 = [3, 0, 1, 5];
x2 = [4, 2, 0, 6];

% ii) Manually compute circular convolution
N = length(x1); % Length of the sequences
circular_conv_manual = zeros(1, N);
for n = 1:N
    for k = 1:N
        circular_conv_manual(n) = circular_conv_manual(n) + x1(k) * x2(mod(n-k, N) + 1);
    end
end

disp('Circular convolution (manual):');
disp(circular_conv_manual);

% iii) using matlab conv function
% Use cconv function
circular_conv_cconv = cconv(x1, x2, N);

disp('Circular convolution (using cconv):');
disp(circular_conv_cconv);

% iv) 
% Compute circular convolution using FFT and IFFT
X1 = fft(x1); % FFT of x1
X2 = fft(x2); % FFT of x2
circular_conv_fft_ifft = ifft(X1 .* X2); % Circular convolution in frequency domain

disp('Circular convolution (using FFT and IFFT):');
disp(circular_conv_fft_ifft);

% v) 
% Verify that all results match
if isequal(round(circular_conv_manual), round(circular_conv_cconv)) && ...
   isequal(round(circular_conv_manual), round(circular_conv_fft_ifft))
    disp('All results match!');
else
    disp('Results do not match.');
end

