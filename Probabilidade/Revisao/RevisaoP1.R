dados=read.csv('dados1.csv', sep = ',',dec='.',header = T)

install.packages("ggplot2")
library(ggplot2)

####ex1####
ggplot(dados,aes(x=fabricante,fill=tamanho))+geom_bar()+labs(x= 'Fabricantes',y= 'Quantidade')

####ex2####
ggplot(dados,aes(y=resistencia,x=fabricante,fill=tamanho))+geom_boxplot()


####ex3####
dados$media =tapply(dados$resistencia,dados$fabricante,mean)

ggplot(dados,aes(dados$fabricante,dados$media,fill=dados$tamanho))+geom_col()

####ex4####
ggplot(dados,aes(x=tempo,y=peso,color=tamanho))+geom_point()+geom_smooth(se = F)

####ex5####
ggplot(dados,aes(fabricante,resistencia,fill=fabricante))+geom_violin()
