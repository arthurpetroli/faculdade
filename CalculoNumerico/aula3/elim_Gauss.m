function [Anew,bnew] = elim_Gauss(A,b)
%Resolve triangular Faz o escalonamento da matriz via eliminaçao de gauss
%   Entrada A :Matriz de Ordem n
%   Entrada B :Vetor de tamanho nX1
% Saida: x = soluçao do sistema linear
[m n] = size(A);
n = length(b);
for k = 1:(n-1)
    for i = (k+1):n
        m = A(i,k)/A(k,k);
        A(i,k) = 0;
        for j = (k+1):n
            A(i,j) = A(i,j) - m * A(k,j);
            b(i) = b(i) - m * b(k);
        end
    end
end
Anew = A;
bnew = b;
end