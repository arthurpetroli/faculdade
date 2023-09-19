function [x, fx] = secantes(x0, x1, tol)
%SECANTES aproxima o zero de uma função pelo método das secantes
%   Entradas: x0 = chute inicial
%             x1 = outro chute inicial
%             tol = precisão do erro relativo
%
%   Saídas:   x = aproximação para o zero da função
%             fx = valor da função para essa aproximação
format long
er = 10;
k = 0;
xk(1) = x0;
xk(2) = x1;
fx0 = exp(-x0) - x0;
fx1 = exp(-x1) - x1;
fxk(1) = fx0;
fxk(2) = fx1;
while er > tol
   k = k + 1;
   fx0 = exp(-x0) - x0;
   fx1 = exp(-x1) - x1;
   x = ((x0 * fx1) - (x1 * fx0))/(fx1 - fx0);
   xk(k+2) = x;
   er = abs((x - x1)/x);
   x0 = x1;
   x1 = x;
   fxk(k + 2) = exp(-x) - x;

end
x = xk' 
fx = fxk'
end