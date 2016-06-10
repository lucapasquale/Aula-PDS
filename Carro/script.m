% clear;
% close all;
% 
% load matlab
% format long
% 
% prob(teste,Dados,2)
close all

for i=1:size(Luca,1)
    Luca(i,5) = sqrt((Luca(i,2))^2 + (Luca(i,3))^2 + (Luca(i,4) - 1)^2);
end

for i=1:size(Warth,1)
    Warth(i,5) = sqrt((Warth(i,2))^2 + (Warth(i,3))^2 + (Warth(i,4) - 1)^2);
end

for i=1:size(Ibra,1)
    Ibra(i,5) = sqrt((Ibra(i,2))^2 + (Ibra(i,3))^2 + (Ibra(i,4) - 1)^2);
end

for i=1:size(Pedro,1)
    Pedro(i,5) = sqrt((Pedro(i,2))^2 + (Pedro(i,3))^2 + (Pedro(i,4) - 1)^2);
end

for i=1:size(LucaParado,1)
    LucaParado(i,5) = sqrt((LucaParado(i,2))^2 + (LucaParado(i,3))^2 + (LucaParado(i,4) - 1)^2);
end

for i=1:size(Luca2k,1)
    Luca2k(i,5) = sqrt((Luca2k(i,2))^2 + (Luca2k(i,3))^2 + (Luca2k(i,4) - 1)^2);
end

for i=1:size(Luca3k,1)
    Luca3k(i,5) = sqrt((Luca3k(i,2))^2 + (Luca3k(i,3))^2 + (Luca3k(i,4) - 1)^2);
end

%%
% figure
% subplot(4,1,1);
% [Lx,Ly] = DFT(Luca(1:900,5),'r');
% [yL,xL] = max(Ly(2 * Fs:5 * Fs));
% xL1 =(xL + 2 * Fs) / 10.3
% title('Luca')
% 
% subplot(4,1,2);
% [Lx,Ly] = DFT(Warth(1:900,5),'b');
% [yW,xW] = max(Ly(2 * Fs:5 * Fs));
% xW =(xW + 2 * Fs) / 10.3
% title('Warth')
% 
% subplot(4,1,3);
% [Lx,Ly] = DFT(Ibra(1:900,5),'m');
% [yI,xI] = max(Ly(2 * Fs:5 * Fs));
% xI =(xI + 2 * Fs) / 10.3
% title('Ibra')
% 
% subplot(4,1,4);
% [Lx,Ly] = DFT(Pedro(1:900,5),'g');
% [yP,xP] = max(Ly(2 * Fs:5 * Fs));
% xP =(xP + 2 * Fs) / 10.3
% title('Pedro')

% figure
% [Lx,Ly] = DFT(LucaParado(:,5),'b');
% [yLP,xLP] = max(Ly(2 * Fs:size(Ly,1)));
% xLP = (xLP + 2 * Fs) / 10.3 
% title('Luqueta 2k')
%%
close all
figure
subplot(3,1,1)
[Lx,Ly] = DFT(LucaParado(:,5),'b');
title('Carro parado');
subplot(3,1,2)
[Lx,Ly] = DFT(Luca2k(:,5),'g');
title('Carro 2k');
subplot(3,1,3)
[Lx,Ly] = DFT(Luca3k(:,5),'r');
title('Carro 3k');

