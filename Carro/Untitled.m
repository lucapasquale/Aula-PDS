%% Limpa todas as variáveis

clear all
close all

%% Leitura do audio para virar matriz
[Y,Fs]=audioread('wav.wav');
Yr = Y(:,1);

%% Corta 20s da música
N=Fs*20;
audio_cortado=Yr(20:N+20,1);

%% Plota o trecho do audio cortado
figure;
plot(audio_cortado)
title('Audio em Mp3')

%% FFT do audio cortado
NFFT = 2^nextpow2(N); % Next power of 2 from length of y
F = fft(audio_cortado,NFFT)/N;
f = Fs/2*linspace(0,1,NFFT/2+1);

figure;
stem(f,2*abs(F(1:NFFT/2+1))) 
title('FFT do Audio em Mp3')
xlabel('Frequency (Hz)')
ylabel('|Y(f)|')

%% Spectograma do audio cortado
figure
[S,F,T,P] = spectrogram(audio_cortado,512,256,2048,Fs);
surf(T,F,10*log10(P),'edgecolor','none'); axis tight; 
view(0,90);
xlabel('Time (Seconds)'); ylabel('Hz');
title('Spectograma do Audio em Mp3')

