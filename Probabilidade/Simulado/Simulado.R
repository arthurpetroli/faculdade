dados = read.csv('winequality-all2.csv', sep = ";", dec = ".", header = T)
dados
table(dados$quality)

install.packages("ggplot2")
library("ggplot2")

####ex1####
ggplot(dados,aes(x=quality,fill=quality))+geom_bar()+labs(title = 'Qualidades dos vinhos',x= 'Nota de qualidade',y= 'Total')
####ex2####
ggplot(dados,aes(x=quality,fill=type))+geom_bar()+labs(title = 'Qualidades dos vinhos',x= 'Nota de qualidade',y= 'Total')
####ex3####
ggplot(dados,aes(total.sulfur.dioxide ,free.sulfur.dioxide))+geom_point()+labs(title = 'Relação entre total.sulfur.dioxide e free.sulfur.dioxide',x= 'total.sulfur.dioxide',y= 'free.sulfur.dioxide')+geom_smooth(se = F)
####ex4####
medias = as.data.frame(tapply(dados$alcohol,dados$quality,mean))
names(medias)='media'
medias$labs=labels(medias)[[1]]
ggplot(medias,aes(labs,media))+geom_col()
####ex5####
ggplot(dados,aes(alcohol))+geom_histogram(fill='blue')

####ex6####
ggplot(dados,aes(y=pH,x=as.factor(quality),fill=quality))+geom_boxplot()
