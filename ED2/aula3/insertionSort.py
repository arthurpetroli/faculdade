vetor = [-33,-43,36,45,-39,18,29,-35,-36,-47,-45,28,4,25,-30]

n = len(vetor)

def insertionSort(vetor,n):
    for i in range(1,n):
        auxiliar = vetor[i]
        j = i-1
        while j>=0 and auxiliar<vetor[j]:
            vetor[j+1] = vetor[j]
        vetor[j+1] = auxiliar
    return vetor
        
vetor = insertionSort(vetor,n)

print(vetor)