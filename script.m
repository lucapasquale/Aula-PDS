%% limpa programa

clear all;
close all;

% load Num - Valores Filtros;
load a;
load b;
load a1;
load b1;


%% Importando áudio e cortando somente até 10 segundos

[Y, FS] = audioread('som.wav');
[Yr,FSr] = audioread('som-ruido.wav');

audio = Y(1:10*FS);
audior=Yr(1:10*FSr);


%% Criando spectogramas e aplicando filtros rejeita-faixa em 1k e 5k

exibespec(audio,FS,'AudioNormal');
exibespec(audior,FSr,'Audio com Ruido');

semruido=filter(b,a,audior);
semruido1=filter(b1,a1,semruido);
exibespec(semruido1,FSr,'Audio Filtrado');

sound(semruido1,FSr);


