vetor = [-33,-43,36,45,-39,18,29,-35,-36,-47,-45,28,4,25,-30]

def SelectionSort(vetor):
    for n in range(0,len(vetor)-1):
        i = n
        for j in range(i,len(vetor)):
            if vetor[j] < vetor[i]:
                i = j
        vetor[j],vetor[i] = vetor[i],vetor[j]         
    return vetor 
                
vetor = SelectionSort(vetor)
 
print(vetor)
            