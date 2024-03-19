x=runif(100,5,80)
y=10+6*x+rnorm(100,0,20)
dados=data.frame(x,y)

library(manipulate)
install.packages("ggplot2")
library(ggplot)
manipulate(plot(1:x), x = slider(5, 10))
manipulate(
  ggplot(dados,aes(x,y))+geom_point()+
    geom_abline(slope =b ,intercept = a,col='red')+
    annotate(geom = 'text',x=20,y=500,label='y=a+bx'),
  a=slider(0, 50), b=slider(0, 15)
)

dados = read.csv("dados1.csv")
ggplot(dados,aes(km,tempo))+geom_point()+geom_smooth()

install.packages("gamlss")#pacote
library(gamlss)#pacote
modelo = gamlss(tempo~km,data=dados) #modelo
summary(modelo) #resumo
modelo$mu.fv #medias ajustadas
term.plot(modelo) #efeitos
plot(modelo) #residuos

dados1 = read.csv("dados2.csv")
ggplot(dados1,aes(km,tempo))+geom_point()+geom_smooth(method = 'lm')

modelo = gamlss(tempo~pb(km),data=dados1) #modelo
summary(modelo) #resumo
modelo$mu.fv #medias ajustadas
term.plot(modelo) #efeitos
plot(modelo) #residuos

km=c(1:90)
dadosnovo=data.frame(km)
(a=predict(modelo,newdata = dadosnovo))

plot(dados1$tempo~dados1$km,lwd=6)
points(1:90,a,col=2,lwd=6)