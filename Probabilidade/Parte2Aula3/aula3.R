####Uma Amostra####
#Ex1
dados = read.csv('ex1.csv',sep = ',', header = T)

#H0: média = 20
#H1: média != 20
t.test(dados$tamanho, alternative = 'two.side', mu = 20, conf.level = 0.94)
#com 94% de confiança, p-valor = 0.004265, ou seja, podemos afirmar que a média é diferente de 20 
#pois p-valor é menor que 6%

#H0: média = 18
#H1: média < 18
t.test(dados$tamanho, alternative = 'less', mu = 18, conf.level = 0.96)
#com 96% de confiança, p-valor = 0.6046, ou seja, não podemos afirmar que a média é menor que 18
#pois p-valor é maior que 4%

#H0: média = 16
#H1: média > 16
t.test(dados$tamanho, alternative = 'greater', mu = 16, conf.level = 0.97)
#com 96% de confiança, p-valor = 0.0005309, ou seja, podemos afirmar que a média é maior que 16
#pois p-valor é menor que 3%

#Ex2

#H0: proporção = 50%
#H1: proporção != 50%
prop.test(24,50, alternative = 'two.side', p = 0.5, conf.level = 0.98)
#com 98% de confiança, p-valor = 0.8875, ou seja, não podemos afirmar que a proporção é diferente de 50%
#pois p-valor é maior que 2%

#HO: proporção = 65%
#H1: proporção < 65%
prop.test(24,50, alternative = 'less', p = 0.65, conf.level = 0.94)
#com 94% de confiança, p-valor = 0.008846, ou seja, podemos afirmar que a proporção é menor que 65%
#pois p-valor é menor que 6%
####Duas Amostras####

##Independentes##

#Média#

#Ex2
dados1 = read.csv('ex2.csv', sep = ',', header = T)

#H0: m1-m2 = 0
#H1: m1-m2 != 0
t.test(dados1$a, dados1$b, alternative = 'two.side', conf.level = 0.95)
#com 95% de confiança, p-valor = 0.008341, ou seja, podemos afirmar que as médias das amostras são diferentes
#pois p-valor é menor que 5%

#H0: m1-m2 = 0
#H1: m1-m2 < 0
t.test(dados1$a, dados1$b, alternative = 'less', conf.level = 0.95)
#com 95% de confiança, p-valor = 0.9958, ou seja, não podemos afirmar que a resitência de A é menor que B
#pois p-valor é maior que 5%

#H0: m1-m2 = 0
#H1: m1-m2 > 0
t.test(dados1$a, dados1$b, alternative = 'greater', conf.level = 0.95)
#com 95% de confiança, p-valor = 0.004171, ou seja,podemos afirmar que a resitência de A é maior que B
#pois p-valor é menor que 5%

#Proporção#

#H0: p1-p2 = 0
#H1: p1-p2 != 0
prop.test(c(20,30), c(50,80), alternative = 'two.side', conf.level = 0.95)
#com 95% de confiança, p-valor = 0.9205, ou seja, não podemos afirmar que a proporção de A e B são diferentes
#pois p-valor é maior que 5%

##Dependentes##

#Média#

#Ex3
dados2 = read.csv('ex3.csv',sep = ',',header = T)

#H0: m1-m2 = 0
#H1: m1-m2 != 0
t.test(dados2$antes, dados2$apos, alternative = 'two.side',conf.level = 0.95, paired = T)
#com 95% de confiança, p-valor = 2.2e-16, ou seja, podemos afirmar que as médias das amostras se alteraram
#pois p-valor é menor que 5%