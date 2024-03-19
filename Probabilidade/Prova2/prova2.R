####ex1####
#a)
install.packages('ggplot2')
library(ggplot2)

dados = read.csv('ex1.csv', dec = ".", header = T)
dados

ggplot(dados,aes(tempo))+geom_histogram()

#b)
media = mean(dados$tempo)
media

pexp(300,1/media)

#c)
a = pexp(399,1/media)
b = pexp(200,1/media)
(a-b)

#d)
qexp(0.7,1/media)

#e)
dados$px = dexp(dados$tempo,1/media)
ggplot(dados,aes(tempo))+geom_histogram(aes(y=..density..))+geom_line(aes(tempo,px,col='red'))


####ex2####
#a)
lambda = 6/20
1 - pbinom(74,100,(1-lambda))

#b)
dbinom(70,100,(1-lambda))

#c)
pbinom(19,100,lambda)

#d)
4000*lambda

#e)
x=0:100
px=dbinom(x,100,(1-lambda))
dados1=data.frame(x,px)
ggplot(dados1,aes(x,px))+geom_col()+theme_minimal()


####ex3####
#a)
dpois(15,20)

#b)
a = ppois(29,20)
b = ppois(20,20)
(a-b)

#c)
1 - ppois(449,20*24)

#d)
1 - ppois(34,30)

#e)
x=0:40
px=dpois(x,20)
dados2=data.frame(x,px)
ggplot(dados2,aes(x,px))+geom_col()+theme_minimal()

####ex4####
#a)
dados2 = read.csv('ex4.csv', dec = ".", header = T)
ggplot(dados2,aes(peso))+geom_histogram()

#b)

1-(pnorm(55,mean(dados2$peso),sd(dados2$peso))-pnorm(45,mean(dados2$peso),sd(dados2$peso)))

#c) 0 

#d)

qnorm(0.3,mean(dados2$peso),sd(dados2$peso))

qnorm(0.7,mean(dados2$peso),sd(dados2$peso))

#e)
dados2$px = dnorm(dados2$peso,mean(dados2$peso),sd(dados2$peso))
ggplot(dados2,aes(peso,px))+geom_histogram(aes(y=..density..))+geom_line(aes(peso,px,col='red'))