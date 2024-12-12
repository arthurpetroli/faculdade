#instalando a biblioteca
#install.packages("ggplot2")
#abrindo a biblioteca
library(ggplot2)

#carregando a base de dados
dados=read.csv('data.csv', sep = ',',dec='.',header = T)

#Criando gráfico de dispersão
ggplot(dados, aes(x = x1, y = x2, color = classe)) + geom_point()