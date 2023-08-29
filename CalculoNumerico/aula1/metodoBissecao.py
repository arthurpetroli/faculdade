import numpy as np

a = 0.5
b = 1
fa = np.exp(a) - 3*a**2
fb = np.exp(b) - 3*b**2
x = (a+b)/2
fx = np.exp(x) - 3*x**2
tol = 0.01
k = 0

print("Metodo da bissecao")
while abs(b-a)/2 > tol:
    k+=1
    if fa*fx < 0:
        b = x
        fb = fx
    else:
        a = x
        fa = fx
    x = (a+b)/2
    fx = np.exp(x) - 3*x**2
    print(x)
    