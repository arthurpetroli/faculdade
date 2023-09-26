#carregando a base de dados
dados=read.csv('dados1.csv', sep = ',',dec='.',header = T)

#instalando a biblioteca
install.packages("ggplot2")
#abrindo a biblioteca
library(ggplot2)

####ex1####
# Criando o gráfico de barras agrupadas
ggplot(dados,aes(x=fabricante,fill=tamanho))+geom_bar()+labs(x= 'Fabricantes',y= 'Quantidade')

####ex2####
# Criando o gráfico de boxplot
ggplot(dados,aes(y=resistencia,x=fabricante,fill=tamanho))+geom_boxplot()+labs(x = "Fabricante", y = "Resistência", fill = "Tamanho")

####ex3####

# Calculando as médias das resistências por fabricante e tamanho
medias <- aggregate(resistencia ~ fabricante + tamanho, data = dados, mean)
# Criando o gráfico de barras agrupadas
ggplot(medias, aes(x = fabricante, y = resistencia, fill = tamanho)) +geom_bar(stat = "identity", position = position_dodge()) +labs(x = "Fabricante", y = "Média de Resistência", fill = "Tamanho") 

####ex4####
#Criando gráfico de dispersão
ggplot(dados,aes(x=tempo,y=peso,color=tamanho))+geom_point()+geom_smooth(se = F)

####ex5####
#Criando gráfico de violino
ggplot(dados,aes(fabricante,resistencia,fill=fabricante))+geom_violin()
