import re
import csv
import copy

from django.core.files.base import ContentFile
from django.core.files.storage import default_storage


def list_entries():
    """
    Retornar uma lista de todos as entradas de processos
    """
    _, filenames = default_storage.listdir("entries")
    return list(sorted(re.sub(r"\.csv$", "", filename)
                for filename in filenames if filename.endswith(".csv")))


def save_entry(title, content):
    """
    Salva o conteudo em um arquivo
    """
    filename = f"entries/{title}.csv"
    if default_storage.exists(filename):
        default_storage.delete(filename)
    default_storage.save(filename, ContentFile(content))


def get_entry(title):
    """
    Retornar uma lista de entradas (processos)
    """
    try:
        with open(f"entries/{title}.csv") as file:
            content = csv.reader(file)
            data = list(content)
        return data
    except FileNotFoundError:
        return None

def read_all_file(title):
    """
    lê todo o conteudo do arquivo
    """
    try:
        file = open(f"entries/{title}.csv")
        content = file.read()
        return content
    except FileNotFoundError:
        return None

class Process:
    def __init__(self, name, CPUtime, arrivalTime): # classe de processos
        self.name = name
        self.CPUtime = CPUtime
        self.arrivalTime = arrivalTime
        self.completionTime = 0
        self.responseTime = 0
        self.waitingTime = 0
        self.maxLine = 0 # variavel apenas para maximo da linha de execucao

    def __str__(self) -> str: # funcao string
        return f"{self.name} - {self.CPUtime} - {self.arrivalTime}"

def sortProcess(data):
    processList = []
    for i in range(0, len(data[0])):
        processList.append(Process(data[0][i], int(data[1][i]), int(data[2][i])))

    originalList = copy.deepcopy(processList) # copia da lista de processos original (nao altera seu valor)
    firstProcess = processList[0] # separa o primeiro processo
    processList = sorted(processList, key=lambda a: (a.arrivalTime, a.CPUtime)) # ordena os processos de acordo com o cpu time e o arrival time

    aux = firstProcess.CPUtime - (firstProcess.CPUtime - processList[0].arrivalTime) # calcula quanto tempo o primeiro processo vai executar antes do proximo chegar

    """
    Se o tempo (aux) for diferente de 0, ou seja, nenhum processo executa antes do primeiro processo do arquivo nós adicionamos o ele novamente a lista de execucao com um tempo de execucao já calculado antes do proximo chegar, ele é adicionado a primeira posicao e reordena a lista
    """
    if aux != 0:
        processList.insert(0, Process(firstProcess.name, aux, firstProcess.arrivalTime))
        index=processList.index(firstProcess) # Pega a posicao do primeiro processo do arquivo
        processList[index].CPUtime = processList[index].CPUtime - aux # atualiza o valor do primeiro primeiro processo do arquivo (valor original - o quanto que ele ja executou)

        processList[1:] = sorted(processList, key=lambda a: (a.arrivalTime, a.CPUtime))

    # Calculos da linha de exeucao
    processList[0].maxLine = processList[0].CPUtime
    for i in range(1, len(processList)):
        processList[i].maxLine = processList[i - 1].maxLine + processList[i].CPUtime
    return processList, originalList

def calculateCompletionTime(processList):
    """
    Calcula o completion time de cada processo
    Retorna uma lista de completion time ordenada com relação ao nome dos processos
    """
    completionTime = []
    aux = processList[0].CPUtime
    completionTime.append([processList[0].name, aux])
    for i in range(1, len(processList)):
        if (processList[i].name == completionTime[0][0]):
            completionTime[0][1] = aux + processList[i].CPUtime
            aux = completionTime[0][1]
        else:
            aux = aux + processList[i].CPUtime
            completionTime.append([processList[i].name, aux])
    print(completionTime)
    completionTime = sorted(completionTime, key=lambda a: a[0])
    return completionTime

def calculateResponseTime(processList, completionTime):
    """
    Calcula o tempo de resposta
    Retorna uma lista com todos os tempos de resposta e o total
    """
    responseTime = []
    total = 0
    for i in range(0, len(completionTime)):
        responseTime.append((processList[i].name, completionTime[i][1] - processList[i].arrivalTime))
        total = total + (completionTime[i][1] - processList[i].arrivalTime)
        processList[i].completionTime = completionTime[i][1]
        processList[i].responseTime = completionTime[i][1] - processList[i].arrivalTime
    print(responseTime)
    total = total / len(responseTime)
    return responseTime, total

def calculateWaitingTime(processList, responseTime):
    """
    Calcula o tempo de espera e retorna o total
    """
    total = 0
    for i in range(0, len(responseTime)):
        total = total + (responseTime[i][1] - processList[i].CPUtime)
        processList[i].waitingTime = responseTime[i][1] - processList[i].CPUtime
        if processList[i].waitingTime < 0:
            processList[i].waitingTime = 0
    total = total / len(processList)
    return total