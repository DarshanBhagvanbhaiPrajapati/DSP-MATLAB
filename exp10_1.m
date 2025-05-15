% Exp10, Gibbs
% Corrected code to demonstrate Gibbs phenomenon

fs = 1000;                    
f_cutoff = 100;                 
wn = f_cutoff/(fs/2);           % Normalized cutoff frequency

% Define filter lengths to test
filter_lengths = [21, 51, 101, 501];

% Create figure for plotting
figure('Position', [100, 100, 1200, 800]);

% Loop through each filter length
for i = 1:length(filter_lengths)
    N = filter_lengths(i);
    
    % Method 1: Design using truncated sinc function (ideal lowpass)
    n = -(N-1)/2:(N-1)/2;       % Time indices centered at 0
    h_ideal = wn * sinc(wn * n);  
    
    % Normalization: Ensure DC gain = 1 [CORRECTION ADDED]
    h_ideal = h_ideal / sum(h_ideal);
    
    % Calculate frequency response
    [H, w] = freqz(h_ideal, 1, 1024);
    freq = w/pi * (fs/2);       % Convert to Hz
    
    % Plot impulse response (time domain)
    subplot(length(filter_lengths), 2, 2*i-1);
    stem(n, h_ideal, 'LineWidth', 1.5);
    title(['Impulse Response (N = ', num2str(N), ')']);
    xlabel('Sample (n)');
    ylabel('Amplitude');
    grid on;
    
    % Plot magnitude response (frequency domain)
    subplot(length(filter_lengths), 2, 2*i);
    plot(freq, abs(H), 'LineWidth', 1.5);
    hold on;
    
    % Plot ideal response for comparison
    ideal_response = ones(size(freq));
    ideal_response(freq > f_cutoff) = 0;
    plot(freq, ideal_response, 'r--', 'LineWidth', 1);
    
    title(['Magnitude Response (N = ', num2str(N), ')']);
    xlabel('Frequency (Hz)');
    ylabel('Magnitude');
    xlim([0, fs/2]);
    ylim([0, 1.2]);
    grid on;
    legend('Designed Filter', 'Ideal Response');
end
