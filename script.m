%% limpa programa

clear all;
close all;


% load Num;
load a;
load b;
load a1;
load b1;

%% trabalhando e importando audio

[Y, FS] = audioread('som.wav');
[Yr,FSr] = audioread('som-ruido.wav');

audio = Y(1:10*FS);
audior=Yr(1:10*FSr);


%%
% plot(audioL);
% figure
% plot(audioR);
% figure
% FR=fft(audioR);
% FL=fft(audioL);
% figure
% plot(audio,1/FS);
% figure
% plot(FR);
% figure
% NFFT = 2^nextpow2(10*FS); % Next power of 2 from length of y
% Y = fft(audio,NFFT)/10*FS;
% f = FS/2*linspace(0,1,NFFT/2+1);
% 
% % Plot single-sided amplitude spectrum.
% plot(f,2*abs(Y(1:NFFT/2+1))) 
% title('Single-Sided Amplitude Spectrum of y(t)')
% xlabel('Frequency (Hz)')
% ylabel('|Y(f)|')

exibespec(audio,FS,'AudioNormal');
exibespec(audior,FSr,'Audio com Ruido');
semruido=filter(b,a,audior);
semruido1=filter(b1,a1,semruido);

exibespec(semruido1,FSr,'Audio Filtrado');
player(semruido)
% window=ceil(100*FS/1000)
% 
%  x = chirp([0:0.001:2],0,2,500);   
%     
%    step=ceil(20*FS/1000);    
%    window=ceil(100*FS/1000); 
%    specgram(audio, 2^nextpow2(window), FS, window, window-step);
%  
% window=ceil(100*FSr/1000)
% 
%  x = chirp([0:0.001:2],0,2,500);   
%     
%    step=ceil(20*FS/1000);    
%    window=ceil(100*FS/1000); 
%    specgram(audio, 2^nextpow2(window), FS, window, window-step);

