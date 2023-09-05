function [x,fx] = newton_raphson(x0,tol)
%newton_raphson aproxima o zero de uma funçao pelo metodo de newton raphson
%   entrada: x0 = é o chute inicial
%            tol = é a precisao para o erro relativo
%   saidas: x = a aproximaçao para o zero da funçao 
%           fx = é o valor da funçao para essa aproximaçao
format long
er_rel = 10;
k = 0;
while er_rel > tol 
    k = k + 1;
    fx0 = exp(-x0) - x0;
    dfx0 = -exp(-x0) - 1;
    x = x0 - (fx0/dfx0);
    er_rel = abs((x-x0)/x);
    x0 = x;
end
x = x0;
fx = fx0;
end