import numpy as np

a = 0
b = 1.3
fa = a**10 - 1
fb = b**10 - 1
x = (a * fb - b * fa)/(fb - fa)
fx = x**10 - 1
tol = 0.01
k = 0

print("Metodo da bissecao")
while abs(fx) > tol and k != 6:
    k+=1
    if fa*fx < 0:
        b = x
        fb = fx
    else:
        a = x
        fa = fx
    x = (a * fb - b * fa)/(fb - fa)
    fx = x**10 - 1
    print(x)
    print(abs(fx))