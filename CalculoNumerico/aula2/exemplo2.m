format long
x0 = 0;
tol = 10^-2;
er_rel = 10;
k = 0;
x1 = 1;
while er_rel > tol 
    k = k + 1;
    fx0 = exp(-x0) - x0;
    fx1 = exp(-x1) - x1;
    x = (x0*fx1 - x1*fx0)/(fx1-fx0);
    er_rel = abs((x-x1)/x);
    x0 = x1;
    x1 = x;
    x, fx1, k
end