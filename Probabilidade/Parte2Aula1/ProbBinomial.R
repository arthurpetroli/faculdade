#funcao binomial

prob = function(x,n,p){
  choose(n,x)*(p^(x))*((1-p)^(n-x))
}

####EX1####
#prob de queimar
p=0.1
#numero de capacitores
n=10

#a) b)
cbind(0:10,prob(0:10,n,p))

#c)
1-prob(0,n,p)

#d)
1-prob(10,n,p)

#e)
n*p

#f)
#variancia
0.1*(.9)
#desvpad
sqrt(0.1*(.9))

1-prob(2,n,0.9)

####EX2####
n=16
p=3/4
#a)
sum(prob(12:16,n,p))

#b)
sum(prob(0:13,n,p))

#c)
prob(12,n,p)

#d)
80*3/4



####Aula2####

####funçao poisson####
poisson = function(lamb,x){
  (exp(-lamb)*lamb^x)/factorial(x)
}

poisson(5,0)+poisson(5,1)+poisson(5,2)

1 - (poisson(5,0)+poisson(5,1)+poisson(5,2)+poisson(5,3)+poisson(5,4)+poisson(5,5))

dpois(240,260)

####binom####
dbinom(2,5,1/3) #A probabilidade de 2 sucessos.

dbinom(0:5,5,1/3) # Todas as probabilidades

sum(dbinom(0:2,5,1/3)) 
sum(pbinom(2,5,1/3)) #A probabilidade de 2 ou menos sucessos

qbinom(0.7901,5,1/3) # O valor deA,tal que P(X≤A)=0.7901

rbinom(10,5,1/3) #Uma amostra aleatória de tamanho 10

barplot(table(rbinom(10,5,1/3))) # plot sem ggplot

#A presente graficamente todas as probabilidade de sucesso
install.packages('ggplot2')
library(ggplot2)

x=0:5
px = dbinom(x,5,1/3)
jorge = data.frame(x,px)
ggplot(jorge, aes(x,px))+geom_col()




####poisson####
dpois(35,40) #A probabilidade de processar 35 itens

dpois(0:475,40) #Todas as probabilidades

ppois(45,40) #A probabilidade de 45 ou menos sucessos

qpois(0.8096,40) #O valor de A, tal que P(X<=A)=0.8096

rpois(10,40) #Uma amostra aleatória de tamanho 10 

#Apresente graficamente todas as probabilidade de sucesso
x = 0:80
px = dpois(x,40)

cleber = data.frame(x,px)
ggplot(cleber,aes(x,px))+geom_col()

####modelo exponencial####
dexp(6,1/7) # nao existe a resposta sempre sera 0

pexp(5,1/7) # A probabilidade de vencer em 5 anos ou menos

qexp(0.5,1/7) # Determine o valor mediano

rexp(10,1/7)

x = rexp(500,1/7)
dx = dexp(x,1/7)

dados = data.frame(x,dx)

ggplot(dados,aes(x))+geom_histogram(aes(y=..density..))+geom_line(aes(x,dx,col='red'))

####modelo normal####
dnorm(20,50,sqrt(25))  # nao existe a resposta sempre sera 0

pnorm(20,50,sqrt(25),lower.tail = F) #A probabilidade de pesar mais de 20

qnorm(0.25,50,sqrt(25)) #O valor de A, tal que P(X<=A)=0.25

rnorm(20,50,sqrt(25))

hist = rnorm(700,50,sqrt(25))
dhist = dnorm(hist,50,sqrt(25))

dados1 = data.frame(hist,dhist)

ggplot(dados1,aes(hist))+geom_histogram(aes(y=..density..))+geom_line(aes(hist,dhist,col='red'))

####exprova####
dbinom(0,10,0.30)

sum(dbinom(1:10,10,0.3))

pbinom(2,10,0.3,lower.tail = F)

50*0.3

x = 0:10
hist = dbinom(x,10,0.3)

dados1 = data.frame(x,hist)
ggplot(dados1,aes(x,hist))+geom_col()

                                                                      