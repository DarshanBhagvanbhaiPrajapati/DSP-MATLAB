%EXP 9 , III) COMPUTE_DFT AND SUBPLOT
n = 0:7;
x_n = (0.95).^n;

% Parameters for DFT computation
N = 4096; % Number of points for DFT

tic; % Start timer
X_dft = compute_dft(x_n, N);
dft_duration = toc; % Stop timer

disp(['Duration of direct DFT computation: ', num2str(dft_duration), ' seconds']);

% Frequency domain magnitude plot
freq_axis = (0:N-1) / N; % Frequency axis normalized to [0, 1)
magnitude_X_dft = abs(X_dft); % Magnitude of DFT

% Plot magnitude spectrum as subplot (2,1,1)
subplot(2,1,1);
plot(freq_axis, magnitude_X_dft);
title('Frequency Domain Magnitude Plot');
xlabel('Normalized Frequency');
ylabel('|X[k]|');
grid on;
