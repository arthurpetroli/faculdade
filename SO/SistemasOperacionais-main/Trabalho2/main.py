import sys

import tkinter as tk
from tkinter import Menu

class Pagina:
    def __init__(self, pag=None, referenceBit=None):
        self.pag = pag
        self.referenceBit = referenceBit

    def __str__(self):
        return f"Pagina: {self.pag} - Bit: {self.referenceBit}"

def read_file(title):
    try:
        with open(f"{title}") as file:
            data = file.readline().split()
            data = [int(x) for x in data]
            ramSize = int(file.readline())
            maxBit = int(file.readline())
        return data, ramSize, maxBit
    except FileNotFoundError:
        return None

def print_memory_status(memory, pf, x):
    output_text.delete(1.0, tk.END)  # Limpa o conteúdo anterior
    output_text.insert(tk.END, "--------------------------------\n")
    output_text.insert(tk.END, "Status da memória:\n")
    for i, page in enumerate(memory):
        output_text.insert(tk.END, f"Posição {i}: {page}\n")
    output_text.insert(tk.END, f"pf: {pf}\n")
    output_text.insert(tk.END, f"x: {x}\n")

def run_simulation(pag, ramSize, maxBit, step_by_step=False):
    memory = [Pagina(None, 0)] * ramSize
    x = 0
    ponteiro = 0
    pf = 0
    while pag:
        if ponteiro == ramSize: # reset do ponteiro
            ponteiro = 0
        # procura se a pag já esta na memoria
        aux = [x for x in memory if x.pag == pag[0]]
        # se já estiver atualizamos o bit de ref para 1
        if len(aux) != 0:
            index = memory.index(aux[0])
            memory[index].referenceBit = 1
            pag.pop(0)
            x += 1
        else:
            while True: # Percorre a memoria pelo ponteiro procurando uma pag com bit de referencia igual a 0
                if ponteiro == ramSize: # reset do ponteiro
                    ponteiro = 0
                if memory[ponteiro].referenceBit == 0:
                    memory[ponteiro] = Pagina(pag[0], 1)
                    pag.pop(0)
                    ponteiro += 1
                    pf += 1
                    x += 1
                    break
                else: # se a pag apontada tiver bit de ref 1 atualizamos para 0
                    memory[ponteiro].referenceBit = 0
                    ponteiro += 1

        # contador de requisições
        if x == maxBit:
            for i in memory:
                i.referenceBit = 0
            x = 0

        # print da memoria no terminal
        for i in memory:
            print(i)
        print("")

        print_memory_status(memory, pf, x)  # Imprime o status da memória após cada página ser processada
        output_text.insert(tk.END, f"Paginas restantes: {pag}\n")
        if step_by_step:
            # Habilita o botão continuar
            continue_button.config(state=tk.NORMAL)
            # Bloqueia e espera um click
            root.wait_variable(continue_var)
            # Desabilita depois do click
            continue_button.config(state=tk.DISABLED)

    print_memory_status(memory, pf, x)  # Imprime o status da memória ao final da simulação
# roda no modo direto
def run_direct_check():
    pag, ramSize, maxBit = read_file(sys.argv[1])
    print(pag)
    run_simulation(pag, ramSize, maxBit)

# roda no modo passo a passo
def run_step_by_step_check():
    pag, ramSize, maxBit = read_file(sys.argv[1])
    print(pag)
    run_simulation(pag, ramSize, maxBit, step_by_step=True)

def step():
    # Continua simulação
    continue_var.set(1)

# Cria janela
root = tk.Tk()
root.geometry('500x400')
root.title('Paginação')

# Menuzin
menubar = Menu(root)
root.config(menu=menubar)

# Arq menu para fazer a janelinha interativa dos mods
file_menu = Menu(menubar, tearoff=0)

# Add as labels para o usuario escolher a forma de verificação
file_menu.add_command(label='Verificação Direta', command=run_direct_check)
file_menu.add_command(label='Verificação Passo a Passo', command=run_step_by_step_check)

# Add a janelinha interativa para mostrar os modos
menubar.add_cascade(label="Modo", menu=file_menu)

# Add uma caixa de texto para printar a saida
output_text = tk.Text(root, height=20, width=50)
output_text.pack()

# Add botão pra continuar (Funciona como se fosse um "enter" no terminal)
continue_button = tk.Button(root, text="Continue", command=step, state=tk.DISABLED)
continue_button.pack()

# Variavel para mandar o sinal de continuar a simulação
continue_var = tk.IntVar()

root.mainloop()

#instalar bibliotece tk para a interface
#sudo apt-get install python-tk