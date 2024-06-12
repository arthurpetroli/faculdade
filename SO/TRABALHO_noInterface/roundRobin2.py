import sys
from Processes import Processes

def definePaths(argv):
    arqPath = argv[1]
    saida1Path = argv[2]
    return arqPath, saida1Path

def abrirArq(paths):
    saida1 = open(paths[1], "w")
    return saida1

def leituraArq(arq):
    p = []

    with open(arq, 'r') as arquivo:
        linhas = arquivo.readlines()

    nomes = linhas[0].strip().split(';')
    temposCPU = linhas[1].strip().split(';')
    temposCheg = linhas[2].strip().split(';')

    for i in range(min(len(nomes), len(temposCPU), len(temposCheg)) - 1):
        nome = nomes[i + 1]

        tempoCPU = temposCPU[i + 1]
        try:
            tempoCPU = int(tempoCPU)
            if tempoCPU <= 0:
                print(f"Erro no tempo de CPU do processo {nome}\n")
                continue
        except ValueError:
            print(f"Erro no tempo de CPU do processo {nome}\n")
            continue

        tempoCheg = temposCheg[i + 1]
        try:
            tempoCheg = int(tempoCheg)
            if tempoCheg < 0:
                print(f"Erro no tempo de chegada do processo {nome}\n")
                continue
        except ValueError:
            print(f"Erro no tempo de chegada do processo {nome}\n")
            continue

        processo = Processes(nome, tempoCPU, tempoCheg)
        p.append(processo)

    return p

def roundRobinEscalonador(processos, quantum):
    tempo_atual = 0
    fila_execucao = []
    relatorio = []

    while processos or fila_execucao:
        while processos and processos[0].tempoCheg <= tempo_atual:
            fila_execucao.append(processos.pop(0))

        if fila_execucao:
            processo_em_execucao = fila_execucao.pop(0)
            tempo_executado = min(processo_em_execucao.tempoRestante, quantum)
            processo_em_execucao.tempoRestante -= tempo_executado

            for processo in fila_execucao:
                processo.tempoEspera += tempo_executado

            if processo_em_execucao.tempoRestante == 0:
                processo_em_execucao.final = tempo_atual + tempo_executado
            else:
                fila_execucao.append(processo_em_execucao)

            relatorio.extend([(tempo_atual + t, processo_em_execucao.nome) for t in range(tempo_executado)])
            tempo_atual += tempo_executado
        else:
            relatorio.append((tempo_atual, "---"))
            tempo_atual += 1

    return relatorio

def gerarLinhaTempo(relatorio):
    linha_tempo = ""
    tempo_atual = 0
    for tempo, processo in relatorio:
        while tempo_atual < tempo:
            linha_tempo += f"|{tempo_atual}|---|"
            tempo_atual += 1
        linha_tempo += f"|{tempo_atual}|---{processo}---|"
        tempo_atual += 1
    linha_tempo += f"{tempo_atual}|"
    return linha_tempo

def escritaRelatorio1(arq, processos, relatorio):
    with open(arq, 'w') as saida:
        saida.write("Processos na Fila do Round Robin:\n")
        for processo in processos:
            saida.write(f"{processo.nome} ")
        saida.write("\nTempo de CPU requerida pelos processos:\n")
        for processo in processos:
            saida.write(f"{processo.tempoCPU} ")
        saida.write("\nTempo de Chegada dos processos:\n")
        for processo in processos:
            saida.write(f"{processo.tempoCheg} ")
        saida.write("\n\nLinha do tempo:\n")
        saida.write(gerarLinhaTempo(relatorio))

        tempo_resp = []
        tempo_espera = []
        for processo in processos:
            tempo_resp.append(processo.final - processo.tempoCheg)
            tempo_espera.append(processo.tempoEspera)
        
        saida.write("\n\nTempo de Resposta:\n")
        for processo in processos:
            saida.write(f"{processo.nome} ")
        saida.write("\n")
        for tr in tempo_resp:
            saida.write(f"{tr} ")

        saida.write("\n\nTempo de Espera:\n")
        for processo in processos:
            saida.write(f"{processo.nome} ")
        saida.write("\n")
        for tr in tempo_espera:
            saida.write(f"{tr} ")
    
        avg_tempo_resposta = sum(tempo_resp) / len(tempo_resp)
        avg_tempo_espera = sum(tempo_espera) / len(tempo_espera)
        saida.write(f"\n\nTempo Médio de Resposta: {avg_tempo_resposta:.2f}\n")
        saida.write(f"Tempo Médio de Espera: {avg_tempo_espera:.2f}\n")

if __name__ == "__main__":
    paths = definePaths(sys.argv)
    processos = leituraArq(paths[0])
    saida = abrirArq(paths)
    relatorio = roundRobinEscalonador(processos.copy(), 5)
    escritaRelatorio1(paths[1], processos, relatorio)
