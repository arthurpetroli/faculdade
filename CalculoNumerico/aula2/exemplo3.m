format long
x0 = 0;
tol = 10^-2;
er_rel = 10;
x1 = 1;
k=0;
xk(1) = x0;
xk(2) = x1;
fx0 = exp(-x0) - x0;
fx1 = exp(-x1) - x1;
fxk(1) = fx0;
fxk(2) = fx1;
while er_rel > tol 
    k = k + 1;
    fx0 = exp(-x0) - x0;
    fx1 = exp(-x1) - x1;
    x = (x0*fx1 - x1*fx0)/(fx1-fx0);
    xk(k+2) = x;
    er_rel = abs((x-x1)/x);
    x0 = x1;
    x1 = x;
    fxk(k+2) = exp(-x)-x;
end
x = xk'
fx = fxk'