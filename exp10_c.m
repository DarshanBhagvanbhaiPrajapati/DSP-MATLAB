% EXP 10, C FIR ALL FILTERS LOWPASS, HIGHPASS,BANDPASS, BANDSTOP
% Define parameters
order = 50;            
fs = 400;               
fc_lowpass = 100;       
fc_highpass = 100;     
fc_bandpass = [50 150]; 
fc_bandstop = [50 150]; 

% Normalize cutoff frequencies (divide by Nyquist frequency = fs/2)
wn_lowpass = fc_lowpass/(fs/2);      
wn_highpass = fc_highpass/(fs/2);    
wn_bandpass = fc_bandpass/(fs/2);  
wn_bandstop = fc_bandstop/(fs/2);    

% Design filters using fir1 with Hamming window
b_lowpass = fir1(order, wn_lowpass, 'low');      
b_highpass = fir1(order, wn_highpass, 'high');  
b_bandpass = fir1(order, wn_bandpass, 'bandpass'); 
b_bandstop = fir1(order, wn_bandstop, 'stop');   

% Calculate frequency responses using freqz
[h_lowpass, w_lowpass] = freqz(b_lowpass, 1, 1024);
[h_highpass, w_highpass] = freqz(b_highpass, 1, 1024);
[h_bandpass, w_bandpass] = freqz(b_bandpass, 1, 1024);
[h_bandstop, w_bandstop] = freqz(b_bandstop, 1, 1024);

% Convert normalized frequency to Hz
freq = w_lowpass/(2*pi)*fs;

% Plot magnitude responses
figure;
subplot(4,2,1);
plot(freq, abs(h_lowpass));
title('Lowpass Filter Magnitude Response');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
grid on;
xlim([0 fs/2]);

subplot(4,2,3);
plot(freq, abs(h_highpass));
title('Highpass Filter Magnitude Response');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
grid on;
xlim([0 fs/2]);

subplot(4,2,5);
plot(freq, abs(h_bandpass));
title('Bandpass Filter Magnitude Response');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
grid on;
xlim([0 fs/2]);

subplot(4,2,7);
plot(freq, abs(h_bandstop));
title('Bandstop Filter Magnitude Response');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
grid on;
xlim([0 fs/2]);

% Plot phase responses
subplot(4,2,2);
plot(freq, unwrap(angle(h_lowpass)));
title('Lowpass Filter Phase Response');
xlabel('Frequency (Hz)');
ylabel('Phase (radians)');
grid on;
xlim([0 fs/2]);

subplot(4,2,4);
plot(freq, unwrap(angle(h_highpass)));
title('Highpass Filter Phase Response');
xlabel('Frequency (Hz)');
ylabel('Phase (radians)');
grid on;
xlim([0 fs/2]);

subplot(4,2,6);
plot(freq, unwrap(angle(h_bandpass)));
title('Bandpass Filter Phase Response');
xlabel('Frequency (Hz)');
ylabel('Phase (radians)');
grid on;
xlim([0 fs/2]);

subplot(4,2,8);
plot(freq, unwrap(angle(h_bandstop)));
title('Bandstop Filter Phase Response');
xlabel('Frequency (Hz)');
ylabel('Phase (radians)');
grid on;
xlim([0 fs/2]);

% Adjust figure layout
set(gcf, 'Position', [100, 100, 1200, 800]);
