####Dados####
idade = c(18,20,23,25) #cria vetor idade
sexo = c("M","F","F","M") #cria vetor sexo
dados = data.frame(idade,sexo) #cria uma tabela com vetores lado a lado
dados #printa dados

dados1=read.csv('dados1.csv',sep = ";",dec = ",") #carrega uma base de dados(nome do arquivo, separador de argumentos e separador de decimal)
dados1$idade+1 #acessa a variavel que quer de dentro do arquivo e soma 1
dados1$classe=c('a','a','b','b') #criar mais um argumento
dados1 #printa dados1

head(dados1,5) #le apenas as 5 primeiras linhas do arquivo
names(dados1) #le os nomes dos argumentos
dim(dados1) #mostra quantas linhas e quantas colunas

dados1[1,3] #pegar o resultado [linha,coluna]
dados1[3,] #pega tudo da linha 3

dados1
dados1[4,3] = 'c' #altera informaçao da 4 linha terceira coluna

ifelse(dados1$idade<=20,"jovem","tmj") # se idade de dados1 for menor ou igual a 20 retorna jovem se nao retorna tmj

dados1$frase=c(ifelse(dados1$idade<=20,"jovem","tmj")) #criar mais um argumento 
dados1 #printa dados1

####Exercicios####
dados2=read.csv('dados2.csv',sep = ";",dec = ",")
IMC = function(Peso,Altura){
  Peso/Altura**2
}
dados2$IMC = (IMC(dados2$Peso,dados2$Altura))
dados2

dados2$Class=c(ifelse(dados2$IMC<19,"baixo","normal")) #criar mais um argumento 
dados2
dim(dados2) #mostra quantas linhas e quantas colunas
