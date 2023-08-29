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

#plotando grafico
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

ggplot(dados,aes(x=empresa,fill=empresa))+geom_bar()+scale_fill_brewer(palette="Set2")+theme_dark()+facet_wrap(~tamanho)+coord_flip()
