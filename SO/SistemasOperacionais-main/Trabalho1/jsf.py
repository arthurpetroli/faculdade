import csv

class Process:
    def __init__(self, name, CPUtime, arrivalTime):
        self.name = name
        self.CPUtime = CPUtime
        self.arrivalTime = arrivalTime

    def __str__(self) -> str:
        return f"{self.name} - {self.CPUtime} - {self.arrivalTime}"

if __name__ == "__main__":
    with open("/home/joaolevorato/programacao/SistemasOperacionais/Trabalho1/process.csv") as file:
        content = csv.reader(file)
        data = list(content)
    processList = []
    for i in range(0, len(data[0])):
        processList.append(Process(data[0][i], int(data[1][i]), int(data[2][i])))
    firstProcess = processList[0]
    processList = sorted(processList, key=lambda a: (a.CPUtime, a.arrivalTime))
    aux = firstProcess.CPUtime - (firstProcess.CPUtime - processList[0].arrivalTime) # Calculate how much time first process will execute before next one arrive
    if aux != 0:
        processList.insert(0, Process(firstProcess.name, aux, firstProcess.arrivalTime))
        index=processList.index(firstProcess)
        processList[index].CPUtime = processList[index].CPUtime - aux
        processList[1:] = sorted(processList[1:], key=lambda a: (a.CPUtime, a.arrivalTime))
    for obj in processList:
        print("|", end='')
        for i in range(0, obj.CPUtime):
            if (obj.CPUtime // 2) == i:
                print(f"{obj.name}", end='')
            print("-", end='')
    print("|")
