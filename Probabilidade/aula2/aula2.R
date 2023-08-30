#materia prova1

dados = read.csv('dados_plot.csv', sep = ",", dec = ".", header = T)
dados
names(dados)

#mudando os nomes
names(dados)=c('linha','empresa','rendimento','tamanho','vendas','palavra','fre_palavra')
head(dados)

#tabela
table(dados$empresa)#ve quantas empressas tem e mostra quantas

#medidas por variavel tapply(informaçoes,pelo que, metrica)
tapply(dados$rendimento,dados$empresa,mean) #media do rendimento das empressas

install.packages("ggplot2") #baixa a biblio
library("ggplot2") #usa a biblio

####plotando grafico####
ggplot(dados,aes(x=empresa))
#geom_bar conta numero de termos 
#se o numero ja estiver informado usar geom_col
ggplot(dados,aes(x=empresa))+geom_bar()
ggplot(dados,aes(x=empresa))+geom_bar()+coord_flip()

#fill nomeia o eixo e colore, e coloca titulo
ggplot(dados,aes(x=empresa,fill=empresa))+geom_bar()+labs(title = 'Titulo',x= 'Empresa',y= 'Total')

#scale escolhe a palheta de cor
ggplot(dados,aes(x=empresa,fill=empresa))+geom_bar()+scale_fill_brewer(palette="Set2")

ggplot(dados,aes(x=empresa,fill=empresa))+geom_bar()+scale_fill_brewer(palette="Set2")+theme_dark()

names(dados)

#coloca tema
ggplot(dados,aes(x=empresa,fill=tamanho))+geom_bar()+scale_fill_brewer(palette="Set2")+theme_dark()

#divide os graficos
ggplot(dados,aes(x=empresa,fill=empresa))+geom_bar()+scale_fill_brewer(palette="Set2")+theme_dark()+facet_wrap(~tamanho)

#ggplot(dados,aes(x=empresa,fill=empresa))+geom_bar()+scale_fill_brewer(palette="Set2")+theme_dark()+facet_wrap(~tamanho)+coord_flip()

####pontos####
#se = f remove sombra, facet_wrap separa por (),smooth faz curvinha
ggplot(dados,aes(x=rendimento,vendas,col=empresa))+geom_point()+geom_smooth(se = F)+ facet_wrap(~empresa)+theme_dark() 
####Histograma####
#parecido com grafico de barras, mas para variavel numerica continua(bins=numero de grupos)(fill=cor)
ggplot(dados,aes(rendimento))+geom_histogram(bins=5,fill='orange')

#fill colore por variavel
ggplot(dados,aes(rendimento))+geom_histogram(aes(fill=empresa),bins=10)

####Densidade####
#eh um histograma, porem com linha e probabilidade
ggplot(dados,aes(rendimento))+geom_density()

#por empresa aes(fill=factor(empresa))
ggplot(dados,aes(rendimento))+geom_density(aes(fill=factor(empresa)))

#trasnparencia(alpha=)
ggplot(dados,aes(rendimento))+geom_density(aes(fill=factor(empresa)),alpha=0.5)

####boxplot####
ggplot(dados,aes(y=rendimento))+geom_boxplot()

#por empresa
ggplot(dados,aes(x=empresa,y=rendimento))+geom_boxplot()

#cor
ggplot(dados,aes(x=empresa,y=rendimento,fill=empresa))+geom_boxplot()

#comparar por tamanho
ggplot(dados,aes(x=empresa,y=rendimento,fill=empresa))+geom_boxplot()+facet_wrap(~tamanho)

#calcular desvio padrao
tapply(dados$rendimento, dados$empresa, sd)


####violin####
ggplot(dados,aes(x=empresa,y=rendimento,fill=empresa))+geom_violin()
