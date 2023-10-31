####ex1####
dados = read.csv('ex1.csv')
dados
install.packages("ggplot2")
library('ggplot2')

a = t.test(dados,conf.level = 0.93)
a$conf.int

ggplot(dados, aes(altura))+geom_histogram()+geom_vline(xintercept = a$conf.int, col = 'red')
#A verdadeira média está entre 18,64 e 20,19, com 93%
#de confiança, ou seja, a probabilidade de estarmos
#dizendo algo errado é de 7% (nível de significância)
####ex2####
dados1 = read.csv('ex2.csv')
(t2 = table(dados1$amostra))

prop.test(t2[2],sum(t2),conf.level = 0.97)
#A verdadeira média está entre 0.4560724 e 0.6122653, com 97%
#de confiança, ou seja, a probabilidade de estarmos
#dizendo algo errado é de 3% (nível de significância)
####ex3####

a = t.test(dados,alternative ='less',mu=21,conf.level = 0.95)
a$conf.int
ggplot(dados, aes(altura))+geom_histogram()+geom_vline(xintercept = 20.11849, col = 'red')
#H0: média = 21
#H1: média<21
#Com 95% de confiança, rejeita-se a hipótese nula, ou seja,
#podemos afirmar que a média é menor que 21, pois o
#p-valor obtido foi de 0,000185, sendo menor que α=0,05
####ex4####

prop.test(107,200,alternative ='two.side',p = 0.6,conf.level = 0.98)
#H0: p= 0,6
#H1: p≠0,6
#Com 98% de confiança, não rejeita-se a hipótese nula, ou seja, não
#podemos afirmar que a verdadeira proporção é diferente de 60%,
#pois o p-valor obtido foi de 0.0712, sendo maior que α=0,02 e os limites de reijeiçao sao 0.4506527||0.6174476
####ex5####
dados2 = read.csv('ex5.csv')
t.test(dados2$temperaturaB,dados2$temperaturaA,alternative ='greater', conf.level =0.94)

var = c(rep('a',60),rep('b',60))
d1 = data.frame(var = var, res =c(dados2$temperaturaA,dados2$temperaturaB))
ggplot(d1,aes(var,res,fill = var ))+geom_boxplot()
