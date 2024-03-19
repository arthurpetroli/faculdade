install.packages("GGally")
library(GGally)
dados = read.csv("dados3.csv")
ggpairs(dados)

install.packages("gamlss")
library(gamlss)
modelo=gamlss(consumo~chuva+temperatura+pb(altitude),data=dados)
summary(modelo)
modelo$mu.fv
plot(modelo)

dados1 = data.frame(chuva=40, temperatura=25, altitude=2000, radiacao=2500)
predict(modelo, newdata = dados1)
