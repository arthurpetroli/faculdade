#@file: roundRobin.py
#@author: Arthur Petroli
#@date: 29 May 24
#@brief: Round Robin Scheduler implementation in Python for the Operating Systems discipline at UTFPR-AP.

class Robin:
    def __init__(self):
        # Variáveis de inicialização
        self.time = 0
        self.process = []
        self.size = []
        self.arrival = []
        self.standby = []
        self.timeLine = []
        self.counter = 0

        self.processos = []
        self.chegada = []

        # Lendo o arquivo process.txt
        file = open('process.txt', 'r')
        lines = file.readlines()
        file.close()
        i = 0
        for line in lines:
            if i == 0:
                self.time = int(line.strip())  # remove formatting
            columns = line.split()
            if columns[0] == "Processo":
                self.process = list(columns[1:])
            elif columns[0] == "Tempo":
                self.size = list(map(int, columns[1:]))
            elif columns[0] == "Chegada":
                self.arrival = list(map(int, columns[1:]))
            i += 1
        self.test()
        self.processos = list(self.process)
        self.chegada = list(self.arrival)
        self.implementation()
        self.status()

    def test(self):
        # Imprime informações de teste
        print('Quantum:', self.time)
        print("Processos:", self.process)
        print("Tempos:", self.size)
        print("Chegadas:", self.arrival)

    def implementation(self):
        # Implementação do algoritmo Round Robin
        while len(self.arrival) == 0 or (len(self.standby) > 0 and self.counter == 2):
            item = self.standby.pop(0)
            self.process.insert(0, item[0])
            self.size.insert(0, item[1])
            self.arrival.insert(0, item[2])
            if len(self.standby) == 0:
                self.counter = 0

        if len(self.arrival) != 0:
            minimum = min(self.arrival)
        else:
            minimum = self.standby[0][2]

        if len(self.arrival) > 0 and self.size[self.arrival.index(minimum)] <= self.time:
            self.timeLine.append((self.size[self.arrival.index(minimum)], self.process[self.arrival.index(minimum)]))
            self.process.pop(self.arrival.index(minimum))
            self.size.pop(self.arrival.index(minimum))
            self.arrival.remove(minimum)
            if len(self.standby) > 0:
                self.counter += 1
        elif len(self.arrival) > 0:
            self.timeLine.append((self.time, self.process[self.arrival.index(minimum)]))
            self.size[self.arrival.index(minimum)] = (self.size[self.arrival.index(minimum)] - self.time)
            self.standby.append((self.process.pop(self.arrival.index(minimum)), self.size.pop(self.arrival.index(minimum)), self.arrival.pop(self.arrival.index(minimum))))
            self.counter += 1
        else:
            self.timeLine.append((self.standby[0][0], self.standby[0][1]))

        while len(self.process) > 0 or len(self.standby) > 0:
            self.implementation()

    def status(self):
        # Imprime o status final do algoritmo
        counter = 0
        new_timeLine = []
        for tuple in self.timeLine:
            counter += tuple[0]
            new_timeLine.append((counter, tuple[1]))
        start = '0'
        copia_timeLine = list(new_timeLine)
        for i in range(len(new_timeLine)):
            start += '----[' + new_timeLine[i][1] + ']----' + str(new_timeLine[i][0])

        print(start)
        dicionario_tuplas = {}

        for tupla in copia_timeLine:
            key = tupla[1]
            value = tupla[0]

            if key not in dicionario_tuplas or value > dicionario_tuplas[key][0]:
                dicionario_tuplas[key] = tupla
        novo_array_tupla = sorted(list(dicionario_tuplas.values()))
        novo_array_tupla = sorted(novo_array_tupla, key=lambda x: x[1])

        soma_resposta = sum([novo_array_tupla[i][0] - self.chegada[i] for i in range(len(novo_array_tupla))])
        media = soma_resposta / len(self.chegada)
        print('Tempo médio de resposta:', media)

        resultado = []
        anterior = 0

        for item in copia_timeLine:
            valor = item[0] - anterior
            resultado.append(valor)
            anterior = item[0]

        resultado.pop()
        copia_timeLine.pop(0)
        saida_trocada = [(resultado[i], item[1]) for i, item in enumerate(copia_timeLine)]

        nova_lista = []
        soma_anteriores = 0

        for tupla in saida_trocada:
            numero = tupla[0] + soma_anteriores
            nova_tupla = (numero, tupla[1])
            nova_lista.append(nova_tupla)
            soma_anteriores = numero

        maiores_numeros = {}

        for tupla in nova_lista:
            numero, letra = tupla
            if letra not in maiores_numeros or numero > maiores_numeros[letra]:
                maiores_numeros[letra] = numero

        nova_lista_sem_repeticao = [(numero, letra) for letra, numero in maiores_numeros.items()]
        nova_lista_sem_repeticao.sort(key=lambda x: x[1])

        contagem_letras = {}
        for item in new_timeLine:
            _, letra = item
            if letra in contagem_letras:
                contagem_letras[letra] += 1
            else:
                contagem_letras[letra] = 1

        nova_lista_corrigida = []
        for item in nova_lista_sem_repeticao:
            valor, letra = item
            if letra in contagem_letras and contagem_letras[letra] > 1:
                valor -= self.time
                contagem_letras[letra] -= 1
            nova_lista_corrigida.append((valor, letra))

        media_espera = []
        for i in range(len(nova_lista_corrigida)):
            valor = nova_lista_corrigida[i][0] - self.chegada[i]
            letra = nova_lista_corrigida[i][1]
            media_espera.append((valor, letra))

        media_sem_letras = [tupla[0] for tupla in media_espera]
        media_esperaFinal = sum(media_sem_letras) / len(media_sem_letras)
        print('Tempo médio de espera:', media_esperaFinal)


robin = Robin()
