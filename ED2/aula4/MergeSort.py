vetor = [-33,-43,36,45,-39,18,29,-35,-36,-47,-45,28,4,25,-30]

fim = len(vetor)

def Merge(vetor,inicio,meio,fim):
    vetorAux = vetor
    p1 = inicio
    p2 = meio+1
    while p1 <= meio and p2 <= fim:
        if vetorAux[p1] < vetorAux[p2]:
            p1 = p1+1
        else: 
            p2 = p2 + 1
    if p1 == meio:
        vetorAux.append(vetorAux[p2:])
    else:
        vetorAux.append(vetorAux[p1:])
    vetor = vetorAux
    
    return vetor

def MergeSort(vetor,inicio,fim):
    if inicio < fim :
        meio = (inicio + fim)/2
        MergeSort(vetor,inicio,meio)
        MergeSort(vetor,meio+1,fim)
        Merge(vetor,inicio,meio,fim)
        vetor = Merge(vetor,inicio,meio,fim)
        print(vetor)
        
        
print(vetor)
