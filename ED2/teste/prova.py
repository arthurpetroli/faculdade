import random

array = [51, -48,  21,  57, -14,  74,  63,  92, -44,  -72]

def partition(arr, low, high, pivotChoice, swapCount):
    if pivotChoice == "first":
        pivot = arr[low]
    elif pivotChoice == "last":
        pivot = arr[high]
        arr[high], arr[low] = arr[low], arr[high] # swap para colocar o pivot na primeira posição
        swapCount += 1
    else:
        pivotIndex = random.randint(low, high)
        pivot = arr[pivotIndex]
        arr[pivotIndex], arr[low] = arr[low], arr[pivotIndex] # swap para colocar o pivot na primeira posição
        swapCount += 1

    i = low + 1
    j = high
    while True:
        while i <= j and arr[i] <= pivot:
            i += 1
        while i <= j and arr[j] >= pivot:
            j -= 1
        if i <= j:
            arr[i], arr[j] = arr[j], arr[i]
            swapCount += 1
        else:
            break
    arr[low], arr[j] = arr[j], arr[low] # swap para colocar o pivot na posição correta
    swapCount += 1
    return j, swapCount

def QuickSort(array, option, pivotChoice, swapCount = 0):
    if len(array) <= 1:
        return array, swapCount
    else:
        low = 0
        high = len(array) - 1
        pivotIndex, swapCount = partition(array, low, high, pivotChoice, swapCount)
        if option == "crescente":
            left, swapCount = QuickSort(array[low:pivotIndex], option, pivotChoice, swapCount)
            right, swapCount = QuickSort(array[pivotIndex+1:high+1], option, pivotChoice, swapCount)
            return right - [array[pivotIndex]] - left, swapCount
            
        else:
            right, swapCount = QuickSort(array[low:pivotIndex], option, pivotChoice, swapCount)
            left, swapCount = QuickSort(array[pivotIndex+1:high+1], option, pivotChoice, swapCount)
            return left + [array[pivotIndex]] + right, swapCount
        
option = input("Digite a opcao(first, last, random): ")
pivotChoice = input("Digite a escolha(crescente, decrescente): ")
       
resposta = QuickSort(array, option, pivotChoice)
print(resposta)