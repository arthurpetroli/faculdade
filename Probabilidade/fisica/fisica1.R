dados1=read.csv('dados_geral.csv',sep = ",",dec = ".")

dados1

install.packages('ggplot2')
library(ggplot2)

ggplot(dados1,aes(x=x,y,col=ponto))+geom_point()+geom_smooth(method="lm", se = F, formula = y~poly(x,2), show.legend = T,linetype="longdash")+theme_dark()+ggtitle("Média dos pontos")
