from random import randint

def buscaLinear(vetor,busca):
    for x in vetor:
        if x == busca:
            return True

def buscaOrdenada(vetor,busca):
    for x in vetor:
        if x == busca:
            return True

def buscaBinaria(vetor,busca):
    for x in vetor:
        if x == busca:
            return True

vetor = []
tam = 10 
for i in range(10):
    vetor.append(randint(1,tam))
print(vetor)

busca = input

buscaLinear(vetor,busca)