#basico
1+1 #soma

sin(pi/2) #calcula o seno
cos(pi/4) #calcula o cos
tan(pi) #calcula tangente

#vetor
x = c(1,2,3,4) #criar vetor (c serve para colocar lado a lado)
x+1 # soma 1 em cada posiçao do vetor
(y = c(2:5)) #cria um vetor de 2 ate 5 e mostra
x+y #soma os dois vetores

#atualizaçao
x = 1:4 #atualizei valores de x

#matriz
z=matrix(x,nrow = 2,byrow = F) #matriz 2 por 2 ordenando por coluna
z
z=matrix(x,nrow = 2,byrow = T) #matriz 2 por 2 ordenando por linha
z
solve(z) #matriz inversa
t(z) #matriz transposta
determinant(z) #calcula determinante da matriz

#derivada
D(expression(X**2),'x') #calcula a derivada da expressao x^2 em relaçao a x
D(expression(tan(x)*sin(x)**2),'x') #calcula a derivada da expressao tan(x)*sin(x)^2 em relaçao a x

#pacotes
install.packages("mosaicCalc") #instalando pacote 
library(mosaicCalc) #abrindo pacote 

#integral indefinida
antiD(a*x**2 ~ x) #calcula a integral em relaçao a x

#funçoes
funcao = function(x){ #criando a funçao
  2*x-1 #oque a funçao vai fazer
}
funcao(1) #passando parametro

#curva de -10 a 10
curve(funcao,-10,10) #cria uma curva aplicando a funçao funçao limitando de -10 a 10
#linha h=horiz. v=vert.
abline(h=0,col='red') #cria linha na horizontal no eixo 0 com cor vermelha (pode ser vertical(v))

#raizes de funçao
uniroot(funcao,lower = 0.2, upper = 0.8) #calcula o valor de x que zerar a funçao (ve qual a raiz) buscando de tanto ate tanto

#pacotes
install.packages("rootSolve") #instalando pacote
library(rootSolve) #abrindo pacote 

#nova funçao
funcao2 = function(x){ #criando a funçao
  2*x**2-3*x-4 #oque a funçao vai fazer
}
curve(funcao2,-2,3) #cria uma curva aplicando a funçao funçao2 limitando de -2 a 3
abline(h=0)  #cria linha na horizontal no eixo 0
A=-1 #valor na variavel
B=3 #valor na variavel
multiroot(funcao2, start = c(A,B)) #descobrir as raizes
abline(v=c(-0.8507811,2.3507811),col=2) #cria linha na vertical no eixo -0.850,2.350 com cor vermelha

#integral definida
integrate(funcao,0,2) #calcula valor da integral


#exercicios
funcao3 = function(x){
  x**2-5*x+6
}
curve(funcao3,0,4)
abline(h=0)
A=2
B=3
multiroot(funcao3, start = c(A,B))
abline(v=c(2,3),col=2)
integrate(funcao3,2,3)
