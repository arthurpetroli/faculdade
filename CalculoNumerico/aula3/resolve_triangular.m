function x = resolve_triangular(A,b)
%Resolve triangular Encontra a soluçao de um sistema triangular superior
%   Entrada A :Matriz triangular superior de Ordem n
%   Entrada B :Vetor de tamanho nX1
% Saida: x = soluçao do sistema linear
[m n] = size(A);
n = length(b);
x(n) = b(n)/A(n,n);
for k = (n-1):-1:1
    s = 0;
    for j = k+1:1:n
        s = s + A(k,j)*x(j);
        x(k) = (b(k)-s)/A(k,k);
    end
end

end