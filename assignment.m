M = 40;  % Window length
n = 0:M-1;
rect_win = ones(1, M);  % Rectangular window

% DTFT computation
w = -pi:0.01:pi;
X = zeros(1, length(w));
for i = 1:length(w)
    for k = 1:M
        X(i) = X(i) + rect_win(k) * exp(-1j * w(i) * n(k));
    end
end

figure;
plot(w, 20*log10(abs(X)), 'LineWidth', 2);
title('Magnitude Response - Rectangular Window');
xlabel('Frequency (rad/sample)');
ylabel('Magnitude (dB)');
grid on;