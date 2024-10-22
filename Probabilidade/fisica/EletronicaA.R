dados1=read.csv('Dados_MUR820_51K.csv',sep = ",",dec = ".")

dados1

library(ggplot2)

ggplot(dados1,aes(x=V,y=mA))+geom_point()+ggtitle("MUR820_51K")



