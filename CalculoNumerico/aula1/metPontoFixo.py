import numpy as np

x0 = 3
print(x0)
f0 = x0**2 + x0 -6
tol = 10**-2
k = 0
er_rel = 10

print("Metodo da bissecao")
while er_rel > tol:
    k+=1
    x = 6/(x0+1)
    er_rel = abs((x-x0)/x)
    x0 = x
    f0 = x0**2 + x0 -6
    print (x)