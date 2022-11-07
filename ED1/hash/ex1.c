#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <string.h>

#define M 13

typedef struct obj
{
    int info;
    char nome[100];
}Objeto;

typedef struct tabelahash
{
    Objeto elem[M];
    int quantidade;
}TabelaHash;

void iniciarTabela(TabelaHash *tabela)
{
    tabela->quantidade = 0;
    for (size_t i = 0; i < M; i++)
    {
        tabela->elem[i].info = -1;
        strcpy(tabela->elem[i].nome, "");
    }
    
}

int hash(int k){
    return k % M;
}

int inserirElemento(TabelaHash *tabela, int k, char nome[100]){
    tabela->elem[hash(k)].info = k;
    strcpy(tabela->elem[hash(k)].nome, nome);
    tabela->quantidade ++;
}


int main(){
    TabelaHash tabela;
    iniciarTabela(&tabela);
    inserirElemento(&tabela, 100, "Tamara");
    inserirElemento(&tabela, 0, "Mantovani");
    inserirElemento(&tabela, 4, "Levorato");

    return 0;
}

