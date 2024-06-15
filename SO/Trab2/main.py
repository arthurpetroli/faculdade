import sys
import tkinter as tk
from tkinter import Menu

# Classe que representa uma página na memória
class MemoryPage:
    def __init__(self, page_num=None):
        self.page_num = page_num

    def __str__(self):
        return f"Page: {self.page_num}"

# Função para ler o arquivo de entrada e retornar a sequência de páginas e o tamanho da RAM
def parse_input_file(filename):
    try:
        with open(filename) as file:
            pages = file.readline().strip()
            if not pages:
                raise ValueError("Arquivo de entrada está vazio ou mal formatado.")
            pages = [int(x) for x in pages]
            ram_capacity = file.readline().strip()
            if not ram_capacity.isdigit():
                raise ValueError("Tamanho da RAM inválido no arquivo de entrada.")
            ram_capacity = int(ram_capacity)
        return pages, ram_capacity
    except FileNotFoundError:
        print(f"Arquivo {filename} não encontrado.")
        return None, None
    except ValueError as e:
        print(f"Erro ao ler o arquivo: {e}")
        return None, None

# Função para exibir o estado atual da memória e o número de page faults
def update_memory_display(memory, page_faults):
    output_text.delete(1.0, tk.END)  # Limpa o conteúdo anterior
    output_text.insert(tk.END, "--------------------------------\n")
    output_text.insert(tk.END, "Estado da memória:\n")
    for i, page in enumerate(memory):
        output_text.insert(tk.END, f"Posição {i}: {page}\n")
    output_text.insert(tk.END, f"Page Faults: {page_faults}\n")

# Função que executa a simulação de paginação usando uma versão aproximada do algoritmo LRU
def simulate_paging(page_sequence, ram_capacity, interactive=False):
    memory = []
    usage_order = []
    page_faults = 0

    for page in page_sequence:
        if page in usage_order:
            usage_order.remove(page)
            usage_order.append(page)
        else:
            if len(memory) < ram_capacity:
                memory.append(MemoryPage(page))
                usage_order.append(page)
            else:
                lru_page = usage_order.pop(0)
                for i in range(len(memory)):
                    if memory[i].page_num == lru_page:
                        memory[i] = MemoryPage(page)
                        break
                usage_order.append(page)
            page_faults += 1
        
        update_memory_display(memory, page_faults)
        output_text.insert(tk.END, f"Páginas restantes: {page_sequence}\n")
        if interactive:
            continue_button.config(state=tk.NORMAL)
            root.wait_variable(continue_var)
            continue_button.config(state=tk.DISABLED)

    update_memory_display(memory, page_faults)

# Função para executar a verificação direta (sem interação passo a passo)
def execute_direct_check():
    pages, ram_capacity = parse_input_file('test.txt')
    if pages and ram_capacity:
        simulate_paging(pages, ram_capacity)

# Função para executar a verificação interativa (passo a passo)
def execute_step_by_step_check():
    pages, ram_capacity = parse_input_file('test.txt')
    if pages and ram_capacity:
        simulate_paging(pages, ram_capacity, interactive=True)

# Função chamada quando o botão "Continue" é pressionado
def continue_simulation():
    continue_var.set(1)

# Configuração da interface gráfica usando Tkinter
root = tk.Tk()
root.geometry('500x400')
root.title('Simulação de Paginação')

menubar = Menu(root)
root.config(menu=menubar)

file_menu = Menu(menubar, tearoff=0)
file_menu.add_command(label='Verificação Direta', command=execute_direct_check)
file_menu.add_command(label='Verificação Passo a Passo', command=execute_step_by_step_check)
menubar.add_cascade(label="Modo", menu=file_menu)

output_text = tk.Text(root, height=20, width=50)
output_text.pack()

continue_button = tk.Button(root, text="Continue", command=continue_simulation, state=tk.DISABLED)
continue_button.pack()

continue_var = tk.IntVar()

root.mainloop()
