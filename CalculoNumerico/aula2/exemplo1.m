format long
x0 = 0;
tol = 10^-2;
er_rel = 10;
k = 0;
while er_rel > tol 
    k = k + 1;
    fx0 = exp(-x0) - x0;
    dfx0 = -exp(-x0) - 1;
    x = x0 - (fx0/dfx0);
    er_rel = abs((x-x0)/x);
    x0 = x;
    x, fx0, k
end