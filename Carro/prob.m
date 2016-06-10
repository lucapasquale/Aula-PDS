function y = prob(teste, Dados, classes)

caract = size(Dados,2) - 1;
M = zeros(caract);
V = zeros(caract);
P = zeros(caract);
evidence = 0;
n = zeros(classes);

%Cria matrizes para cada classe
for c = 1:classes
    %Para cada linha dos Dados, verificar para qual classe pertence
    for i = 1:size(Dados,1)
        if Dados(i,size(Dados,2)) == c
            %Aumentar o ponteiro da fatia para receber o proximo dado
            n(c) = n(c) + 1;
            %Colocar na fatia 'c' a linha dos dados
            DadosSeparado(n(c),:,c) = Dados(i,:);
        end   
    end
end


for c = 1:classes
    x(c) = 0.5;
    for j = 1:caract
        M(j,c) = mean(DadosSeparado(:,j,c));
        V(j,c) = var(DadosSeparado(:,j,c));   
        P(j,c) = (1/(sqrt(2*pi*V(j,c))))*exp(-((teste(j) - M(j,c))^2)/(2*V(j,c)));

        x(c) = x(c) * P(j,c);
    end    
    evidence = evidence + x(c);
end

for c = 1:classes
   prob(c) = x(c) / evidence;
   prob(c) = prob(c) * 100;
end

y = prob;

 