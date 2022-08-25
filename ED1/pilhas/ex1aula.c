#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>

#define n 5

typedef struct
{
    int RA;
    char nome[50];
}Aluno;

typedef struct 
{
    Aluno aluno[n];
    int topo;
}Pilha;

void inicializaPilha(Pilha *pilha){
    pilha->topo = 0;
}

bool estaCheio(Pilha *pilha){
    if (pilha->topo == n)
    {
        return true;
    }else{
        return false;
    }
}

void empilhar(Pilha *pilha, Aluno aluno){
    if (estaCheio(pilha)==1)
    {
        printf("Pilha esta cheia!!");
        return ;
    }else{
        pilha->aluno[pilha->topo]=aluno;
        pilha->topo++;
    }
    
}

void imprimir(Pilha pilha){
    for (size_t i = 0; i < pilha.topo; i++)
    {
        printf("\nNumero na pilha: %d/ RA: %d/ Nome: %s\n",i,pilha.aluno[i].RA,pilha.aluno[i].nome);
    }
    
}


int main(){
    Aluno aluno = {2408732 , "Arthur"};
    Pilha pilha;

    inicializaPilha(&pilha);

    empilhar(&pilha,aluno);

    aluno.RA =123;
    strcpy(aluno.nome , "Jorge");
    empilhar(&pilha,aluno);
    
    aluno.RA =456;
    strcpy(aluno.nome , "Cleber");
    empilhar(&pilha,aluno);

    aluno.RA =789;
    strcpy(aluno.nome , "Armando");
    empilhar(&pilha,aluno);

    imprimir(pilha);

    return 0;
}