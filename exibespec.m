function [audio,FS,nome]=exibespec(audio,FS,nome)
    figure
    
     NFFT = 2^nextpow2(10*FS); % Next power of 2 from length of y
 Y = fft(audio,NFFT)/10*FS;
 f = FS/2*linspace(0,1,NFFT/2+1);
 
 subplot(1,2,1)
 plot(f,2*abs(Y(1:NFFT/2+1))) 
 title(nome)
 xlabel('Frequency (Hz)')
 ylabel('|Y(f)|')
  subplot(1,2,2);
window=ceil(100*FS/1000)


 x = chirp([0:0.001:2],0,2,500);   
    
   step=ceil(20*FS/1000);    
   window=ceil(100*FS/1000); 
   specgram(audio, 2^nextpow2(window), FS, window, window-step);