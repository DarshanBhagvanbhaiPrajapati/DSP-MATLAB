
% Q-9, Part - (iv) FFT FUNCTION
N = 4096; 
x = rand(1, N); 

tic; % Start timing
X_direct = zeros(1, N);
for k = 1:N
    for n = 1:N
        X_direct(k) = X_direct(k) + x(n) * exp(-1j * 2 * pi * (k-1) * (n-1) / N);
    end
end
time_direct = toc; 

% FFT computation
tic; % Start timing
X_fft = fft(x);
time_fft = toc; % End timing

% Display results
fprintf('Time for direct DFT computation: %.4f seconds\n', time_direct);
fprintf('Time taken for FFT computation: %.4f seconds\n', time_fft);

% Magnitude plots
figure;
subplot(2, 1, 1);
plot(abs(X_direct));
title('Magnitude Plot - Direct DFT');
xlabel('Frequency Index');
ylabel('Magnitude');

subplot(2, 1, 2);
plot(abs(X_fft));
title('Magnitude Plot - FFT');
xlabel('Frequency Index');
ylabel('Magnitude');

% Observation:
% The time taken for FFT computation is significantly lower than that for direct DFT computation.

