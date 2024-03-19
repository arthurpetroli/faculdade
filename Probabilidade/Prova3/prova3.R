prova3 = source('https://t.ly/6R0IK')
avaliacao3(2408732)

#### Ex 1 ####
ex1
t.test(ex1,conf.level = 0.9275)
#A verdadeira média está entre 20.37906 e 22.53215, com 92,75%
#de confiança, ou seja, a probabilidade de estarmos
#dizendo algo errado é de 7,25% (nível de significância), media "21.4556"

#### Ex 2 ####
(t=table(ex2))
prop.test(t[2], length(ex2), conf.level = 0.91)
#A verdadeira proporção está entre 0.1836953 e 0.4457414, com 91%
#de confiança, ou seja, a probabilidade de estarmos
#dizendo algo errado é de 9% (nível de significância),
# estimativas de amostra(p=0,3)

#### Ex 3 ####
t.test(ex3,alternative ='two.side',mu=20.375,conf.level =0.91875)
# H0: media = 20.375
# H1: media ≠ 20.375
#Com 91.875% de confiança,rejeita-se a hipótese nula, ou seja,
#podemos afirmar que a média é diferente de 20.375, pois o p-valor
#obtido foi de 0,07151, sendo menor que α=0,08125

#### Ex 4 ####
(t2=table(ex4))
prop.test(t2[2], length(ex4) ,alternative ='two.side', p=0.25625 ,conf.level =0.93625)
# H0: p = 0.25625
# H1: p ≠ 0.25625
#Com 93.625% de confiança, rejeita-se a hipótese nula, ou seja,
#podemos afirmar que a verdadeira proporção é diferente de 25.625%,
#pois o p-valor obtido foi de 0,009337, sendo menor que α=0,06375

#### Ex 5 ####
t.test(ex5x,ex5y,alternative ='two.side', conf.level =0.90125)
# H0: populacao X - populacao Y = 0
# H1: populacao X - populacao Y ≠ 0
#Com 90.125% de confiança,rejeita-se a hipótese nula, ou seja,
#podemos afirmar que existe diferença entre as resistências entre as
#marcas, pois o p-valor obtido foi de 0,0004222, sendo menor que
#α=0,09875. Nesse caso,ex5x é mais resistente que ex5y

#### Ex 6 ####
t.test(ex6antes,ex6depois,alternative ='two.side', conf.level =0.8925)
# H0: antes - depois = 0
# H1: antes - depois ≠ 0
#Com 89.25% de confiança, não rejeita-se a hipótese nula, ou seja, não
#podemos afirmar que existe diferença entre as resistências entre as
#marcas, pois o p-valor obtido foi de 0,2192, sendo maior que
#α=0,1075.