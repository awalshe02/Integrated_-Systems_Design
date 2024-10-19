[x,Fs] = audioread('speech_36.wav'); %read file

% Plot to find out which frequency to remove from signal
nfft = 2^10;
X = fft(x, nfft);
fstep = Fs/nfft;
fvec = fstep*(0: nfft/2-1);
fresp = 2*abs(X(1:nfft/2));

%plotting stuff
plot(fvec,fresp);
title('Single-Sided Amplitude Spectrum of x(t)');
xlabel('Frequency (Hz)');
ylabel('|X(f)|');

clear amp;
clear index;
[amp, index] = max(fresp); %getting max ampilitude and index
max_freq = fvec(index); %getting frequency at that index
fprintf('Peak Frequency = %.2f Hz\n', max_freq);
fprintf('Max Amplitude = %.2f dB\n', amp);
hold on;
plot(max_freq, amp, 'ro', 'MarkerSize', 6); %plot the point on graph
