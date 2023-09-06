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



####tree map####
install.packages("treemapify")
library(treemapify)
dados1=as.data.frame(table(dados$empresa))#cria uma base de dados com base na tabela de dados
names(dados1)=c('empresa','Freq')
dados1
ggplot(dados1,aes(area=Freq,fill=empresa))+geom_treemap()

#rendimento medio por tamanho x empresa(ga,gb...pa,pb)
dados$interacao=interaction(dados$tamanho,dados$empresa)
dados3=as.data.frame(tapply(dados$rendimento,dados$interacao,mean))
dados3
dados3$nomes=labels(dados3)[[1]]
names(dados3)[1]='total'
dados3
ggplot(dados3,aes(area=total,fill=nomes))+geom_treemap()
names(dados3)

####nuvem de letras####
dados4=dados[,6:7]#dados com palavras
dados4
install.packages("wordcloud2")
library(wordcloud2)
wordcloud2(data=dados4,size=1.6)

####graficos animaddos = pontos e linhas
####Animado dispersao####
install.packages("gapminder")
library(gapminder)
head(gapminder)

#relacao entre renda x expvida
ggplot(gapminder,aes(gdpPercap,lifeExp))+geom_point()+theme_bw()

#colorir por continente
ggplot(gapminder,aes(gdpPercap,lifeExp,col=continent))+geom_point()+theme_bw()

#tamanho do ponto de acordo com a populacao
ggplot(gapminder,aes(gdpPercap,lifeExp,size=pop,col=continent))+geom_point()+theme_bw()

#arrumar nomes eixos
ggplot(gapminder,aes(gdpPercap,lifeExp,size=pop,col=continent))+geom_point()+theme_bw()+labs(title='Ano:{frame_time}',x='Renda per capita',y='Expectativa de vida')

#animar
grafico = ggplot(gapminder,aes(gdpPercap,lifeExp,size=pop,col=continent))+geom_point()+theme_bw()+labs(title='Ano:{frame_time}',x='Renda per capita',y='Expectativa de vida')+transition_time(year)

animate(grafico,renderer = gifski_renderer())

