% exp_8) B) DIFF SEQUENCE
% MATLAB Code for Part b: DTFT Analysis of Signal

% Define frequency range
omega = linspace(-pi, pi, 1000);

%% i. Unit sample sequence: x₁[n] = δ[n]
x1 = 1;      % Unit impulse value
n1 = 0;      % Time index for impulse
X1 = exp8dtft(x1, n1, omega);

% Plot amplitude and phase response
figure;
subplot(2,1,1);
plot(omega/pi, abs(X1));
title('Amplitude Response of Unit Sample Sequence x₁[n] = \delta[n]');
xlabel('Frequency pi)');
ylabel('|X₁(e^{j\omega})|');
grid on;

subplot(2,1,2);
plot(omega/pi, angle(X1));
title('Phase Response of Unit Sample Sequence x₁[n] = \delta[n]');
xlabel('Frequency (\omega/\pi)');
ylabel('\angle X₁(e^{j\omega})');
grid on;

%% ii. Rectangular sequence: x₂[n] = 1 for 0 ≤ n ≤ 9, 0 otherwise
x2 = ones(1,10);  % Rectangular pulse
n2 = 0:9;         % Time indices
X2 = exp8dtft(x2, n2, omega);

% Plot amplitude and phase response
figure;
subplot(2,1,1);
plot(omega/pi, abs(X2));
title('Amplitude Response of Rectangular Sequence x₂[n]');
xlabel('Frequency (\omega/\pi)');
ylabel('|X₂(e^{j\omega})|');
grid on;

subplot(2,1,2);
plot(omega/pi, angle(X2));
title('Phase Response of Rectangular Sequence x₂[n]');
xlabel('Frequency (\omega/\pi)');
ylabel('\angle X₂(e^{j\omega})');
grid on;

%% iii. Exponential sequence: x₃[n] = (0.9)ⁿu[n]
n3 = 0:100;       % Time indices (truncated)
x3 = (0.9).^n3;   % Exponential sequence
X3 = exp8dtft(x3, n3, omega);

% Plot amplitude and phase response
figure;
subplot(2,1,1);
plot(omega/pi, abs(X3));
title('Amplitude Response of Exponential Sequence x₃[n] = (0.9)^n u[n]');
xlabel('Frequency (\omega/\pi)');
ylabel('|X₃(e^{j\omega})|');
grid on;

subplot(2,1,2);
plot(omega/pi, angle(X3));
title('Phase Response of Exponential Sequence x₃[n] = (0.9)^n u[n]');
xlabel('Frequency (\omega/\pi)');
ylabel('\angle X₃(e^{j\omega})');
grid on;

%% iv. Sinusoidal sequence: x₄[n] = sin(π/4 n)
n4 = -50:50;      % Time indices
x4 = sin(pi/4 * n4); % Sinusoidal sequence
X4 = exp8dtft(x4, n4, omega);

% Plot amplitude and phase response
figure;
subplot(2,1,1);
plot(omega/pi, abs(X4));
title('Amplitude Response of Sinusoidal Sequence x₄[n] = sin(\pi n/4)');
xlabel('Frequency (\omega/\pi)');
ylabel('|X₄(e^{j\omega})|');
grid on;

subplot(2,1,2);
plot(omega/pi, angle(X4));
title('Phase Response of Sinusoidal Sequence x₄[n] = sin(\pi n/4)');
xlabel('Frequency (\omega/\pi)');
ylabel('\angle X₄(e^{j\omega})');
grid on;
