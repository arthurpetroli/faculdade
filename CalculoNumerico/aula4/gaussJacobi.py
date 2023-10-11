import numpy as np
#leitura da matriz de coeficientes A e do vetor de recursos b
a = np.array([ [10,2,1], [1,5,1], [2,3,10] ], float)
b = np.array([[7], [-8], [6]], float)
#
print(b)
tol = 0.05
kMax = 20
n = len(b) # descreve o tamanho do vetor b
print([n])
x0 = np.array([[0.7],[-1.6],[0.6]],float) #vetor inicial dado
#c = np.array([ [0,0,0], [0,0,0], [0,0,0] ], float)
c = np.zeros([n,n],float)
g = np.zeros([n,1],float)

#Formação da matriz c e g da função de iteração do método
for i in range(0,n,1):
    for j in range(0,n,1):
       if i == j:
           #c[i,j] = 0
           g[i] = b[i]/a[i,i]
       else:
           c[i,j] = -a[i,j]/a[i,i]
#fim

#Atualização das aproximações para a solução do sistema
k = 0
distmax = 100
xnovo = np.zeros([n,1],float)
while distmax>tol and k <= kMax:
    k = k + 1
    xnovo = c.dot(x0) + g
    diffe = xnovo - x0
    distmax = max(abs(diffe))
    x0 = xnovo
print('A solução é',x0)
print('iterações',k)
#