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
    for (int i = 0; i < M; i++)
    {
        tabela->elem[i].info = -1;
        strcpy(tabela->elem[i].nome, "");
    }
}

bool estaCheia(TabelaHash *tabela)
{
    return (tabela->quantidade>=M);
}

bool estaVazia(TabelaHash *tabela)
{
    return (tabela->quantidade == 0);
}

void imprimirTabela(TabelaHash *tabela)
{
    printf("\n\n==============================");
    printf("\n====Tabela Hash(total = %d)====", tabela->quantidade);
    printf("\n==============================");
    for (int i = 0; i < M; i++)
    {
        printf("\n[%d] \tinfo=%d // nome=%s \n", i, tabela->elem[i].info, tabela->elem[i].nome);
    }

}

int hash(int k){
    return k % M;
}

void inserirElemento(TabelaHash *tabela, int info, char nome[100]){
    int pos = hash(info);
    if(estaCheia(tabela)==true){  
        return;
    }
    while (tabela->elem[pos].info != -1)
    {
        pos++;
        if (pos>=M)
        {
            pos = 0;
        }
    }

    tabela->elem[pos].info = info;
    strcpy(tabela->elem[pos].nome, nome);
    tabela->quantidade++;
}

int pesquisar(TabelaHash *tabela, int info){
    int pos = hash(info);
    if (estaVazia(tabela)==true)
    {
        return -1;
    }
    
    while (tabela->elem[pos].info != info)
    {
        pos++;
        if (pos>=M)
        {
            pos = 0;
        }
        if (pos == hash(info))
        {
            return -1;
        }
    }
    return pos;
    
}

void deletarElemento(TabelaHash *tabela, int info){
    int pos = pesquisar(tabela, info);
    if (pos < 0)
    {
        printf("\nImpossivel deletar info=%d, pois nao existe na tabela", info);
        return;
    }
    tabela->quantidade--;
    tabela->elem[pos].info = -1;
    strcpy(tabela->elem[pos].nome, "");

    }


int main(){
    TabelaHash tabela;
    iniciarTabela(&tabela);
    imprimirTabela(&tabela);
    inserirElemento(&tabela, 100, "Tamara");
    inserirElemento(&tabela, 9, "Mantovani");
    inserirElemento(&tabela, 4, "Levorato");
    inserirElemento(&tabela, 6, "Wendel");
    imprimirTabela(&tabela);

    pesquisar(&tabela, 9);
    

    //deletarElemento(&tabela, 6);

    imprimirTabela(&tabela);

    return 0;
}

