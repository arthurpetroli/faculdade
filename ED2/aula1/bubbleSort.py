#-47 -45 -43 -39 -36 -35 -33 -30 4 18 25 28 29 36 45

vetor = [-33,-43,36,45,-39,18,29,-35,-36,-47,-45,28,4,25,-30]
n = len(vetor)

def BubbleSort(vetor, n):
    trocou = True
    while trocou:
        trocou = False
        for i in range(n-1):
            if vetor[i] > vetor[i+1]:
                vetor[i],vetor[i+1] = vetor[i+1],vetor[i]
                trocou = True
    return vetor

vetor = BubbleSort(vetor, n)
print(vetor)