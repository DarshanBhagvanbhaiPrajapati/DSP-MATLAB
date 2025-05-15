% Exp=10 b) RECTANGULAR, BLACKMAN, HAMMING
% b i, ii)) for rectangular, blackman, hamming
Fs = 1000;  % Sampling Frequency in Hz
fc = 100;  % Cut-off frequency 
N = 51;    % Filter order

% Normalized cut-off frequency (digital frequency)
Wn = 2 * fc / Fs;   

% Rectangular Window
rect_win = rectwin(N);
b_rect = fir1(N-1, Wn, rect_win);

% Blackman Window
blackman_win = blackman(N);
b_blackman = fir1(N-1, Wn, blackman_win);

% Hamming Window
hamming_win = hamming(N);
b_hamming = fir1(N-1, Wn, hamming_win);

% Plot frequency responses
freqz(b_rect,1,1024,Fs);
title('Frequency Response Rectangular Window');
figure;

freqz(b_blackman,1,1024,Fs);
title('Frequency Response Blackman Window');
figure;

freqz(b_hamming,1,1024,Fs);
title('Frequency Response Hamming Window');
