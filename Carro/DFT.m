function [x,y] = DFT(data,c)
N = size(data,1);
Fs = 1000;
NFFT = 2^nextpow2(N); % Next power of 2 from length of y
F = fft(data,NFFT)/N;
f = Fs/2*linspace(0,1,NFFT/2+1);

F(1) = 0;

xlabel('Frequency (Hz)')
ylabel('|Y(f)|')
x = f;
y = abs(F(1:NFFT/2+1));
stem(x,y,c);
%Muda os valores maximos dos eixos
axis([0 200 0 inf])
