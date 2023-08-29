import numpy as np

a = 0
b = 1.3
fa = a**10 - 1
fb = b**10 - 1
x = (a+b)/2
fx = x**10 - 1
tol = 0.01
k = 0

print("Metodo da bissecao")
while abs(b-a)/2 > tol and k != 6:
    k+=1
    if fa*fx < 0:
        b = x
        fb = fx
    else:
        a = x
        fa = fx
    x = (a+b)/2
    fx = x**10 - 1
    print(x)
    print(abs(fx))