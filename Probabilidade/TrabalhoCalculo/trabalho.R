dados = read.csv("dadosCalc.csv")
library(ggplot2)
ggplot(mapping = aes(dados$Ano, dados$VendaCelular)) +geom_point() +geom_smooth(method = "lm", formula = y~x)
retas <- ggplot(mapping = aes(dados$Ano, dados$VendaCelular)) +geom_point() +geom_smooth(se = FALSE, method = "lm", formula = y~x) + geom_hline(yintercept = mean(dados$VendaCelular))
retas + geom_segment(aes(x = dados$Ano, y = dados$VendaCelular,xend = dados$Ano, yend = predict(lm(dados$VendaCelular ~ dados$Ano))), color="red")
SQt = sum((mean(dados$VendaCelular) - dados$VendaCelular)**2)
SQres = sum((predict(lm(dados$VendaCelular ~ dados$Ano)) - dados$VendaCelular)**2)
R2 = (SQt - SQres) / SQt
R2
summary(lm(dados$VendaCelular ~ dados$Ano))
predict(lm(dados$VendaCelular ~ dados$Ano))

media=tapply(dados$VendaCelular,dados$Ano, mean)
desvio=tapply(dados$VendaCelular,dados$Ano,sd)
modelo=lm(dados$VendaCelular~dados$Ano+I(dados$Ano^2))
summary(modelo)
plot(dados$VendaCelular~dados$Ano, 
     las=1,ylim=c(0,200),col="red",pch=16)
arrows(dados$Ano,media+desvio,dados$Ano,media-desvio,length = 0.02,angle=90,code=3)
curve(modelo$coefficients[1]+modelo$coefficients[2]*x+modelo$coefficients[3]*x^2, add=T,col="blue")
