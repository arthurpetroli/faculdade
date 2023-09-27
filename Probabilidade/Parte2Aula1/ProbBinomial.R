#funcao binomial

prob = function(x,n,p){
  choose(n,x)*(p^(x))*((1-p)^(n-x))
}

####EX1####
#prob de queimar
p=0.1
#numero de capacitores
n=10

#a) b)
cbind(0:10,prob(0:10,n,p))

#c)
1-prob(0,n,p)

#d)
1-prob(10,n,p)

#e)
n*p

#f)
#variancia
0.1*(.9)
#desvpad
sqrt(0.1*(.9))

1-prob(2,n,0.9)

####EX2####
n=16
p=3/4
#a)
sum(prob(12:16,n,p))

#b)
sum(prob(0:13,n,p))

#c)
prob(12,n,p)

#d)
80*3/4
