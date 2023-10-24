####confiança####
amostra = read.csv("ex1.csv")

#t.test(amostra,conf.level = nível)
t.test(amostra,conf.level = 0.95) #ex1
#A verdadeira média está entre 16,94 e 19,37, com 95%
#de confiança, ou seja, a probabilidade de estarmos
#dizendo algo errado é de 5% (nível de significância)

t.test(amostra,conf.level = 0.99) #ex2
#A verdadeira média está entre 16,52 e 19,79, com 99%
#de confiança, ou seja, a probabilidade de estarmos
#dizendo algo errado é de 1% (nível de significância)

t.test(amostra,conf.level = 1) #ex3
#A verdadeira média está entre -Inf e +Inf, com 100% de
#confiança, ou seja, a probabilidade de estarmos
#dizendo algo errado é de 0% (nível de significância)

#prop.test(quantidade em estudo, tamanho da amostra, conf.level = nível)
prop.test(8, 20, conf.level = 0.95) #ex4
#A verdadeira proporção está entre 19,9 e 63,5%, com 95%
#de confiança, ou seja, a probabilidade de estarmos
#dizendo algo errado é de 5% (nível de significância)

prop.test(12, 20, conf.level = 0.95) #ex5
#A verdadeira proporção está entre 36,4 e 80%, com 95%
#de confiança, ou seja, a probabilidade de estarmos
#dizendo algo errado é de 5% (nível de significância)