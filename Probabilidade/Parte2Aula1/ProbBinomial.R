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

poisson = function(lamb,x){
  (exp(-lamb)*lamb^x)/factorial(x)
}

poisson(5,0)+poisson(5,1)+poisson(5,2)

1 - (poisson(5,0)+poisson(5,1)+poisson(5,2)+poisson(5,3)+poisson(5,4)+poisson(5,5))

dpois(240,260)

dbinom(2,5,1/3)

dbinom(0:5,5,1/3)

sum(dbinom(0:2,5,1/3))
sum(pbinom(2,5,1/3))

qbinom(0.7901,5,1/3)

rbinom(10,5,1/3)

barplot(table(rbinom(10,5,1/3)))

install.packages('ggplot2')
library(ggplot2)

x=0:5
px = dbinom(x,5,1/3)
jorge = data.frame(x,px)
ggplot(jorge, aes(x,px))+geom_col()
