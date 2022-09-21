#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#define N 7 

typedef struct
{
    int chave;
    //demais informaçoes
}obj;

typedef struct
{
    obj array[N];
    int inicio;
    int fim;
    int qntElemento;
}filaEstatica;

void inicializarFila(filaEstatica *fila){
    fila ->fim =-1;
    fila ->inicio =-1;
    fila ->qntElemento =0;
}

bool estaVazia(filaEstatica *fila){
    return(fila->qntElemento == 0); 
}

bool estaCheia(filaEstatica *fila){
    return(fila->qntElemento == N); 
}

void inserirElemento(filaEstatica *fila, int cu){
    if (estaCheia(fila))
    {
        printf("\n\n fila esta cheia\n\n");
        return 0;
    }
    if (estaVazia(fila))
    {
        fila->inicio = 0;
        fila->fim = 0;
        fila->qntElemento++;
        fila->array[0].chave=cu;
    }
    fila->fim=(fila->fim+1)%N;
    fila->array[fila->fim].chave=cu;
    fila->qntElemento++;

}

void imprimir(filaEstatica fila){
    for (size_t i = fila.inicio; i < fila.qntElemento; i++)
    {
        printf("\nPos [%d]= %d\n",i,fila.array[(fila.inicio+i)%N].chave);
    }
    
}

int main(){
    filaEstatica fila;
    obj obgt;
    inicializarFila(&fila);
    if (estaVazia(&fila) == true)
    {
        printf("\n\nFila esta vazia\n\n");
    }
    inicializarFila(&fila,13);
    inicializarFila(&fila,130);
    inicializarFila(&fila,1300);
    imprimir(fila);

    
    
    return 0;
}