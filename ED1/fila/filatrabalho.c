#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#define MAX 10

typedef struct {
    int id;
    char nome[50];
    char rua[50];
    int numero;
} Objeto;

typedef struct {
    int inicio;
    int fim;
    int quantidade;
    Objeto vetor[MAX];
} FilaEstatica;

int estaVazia(FilaEstatica *fila) {
    return (fila->quantidade == 0);
}

int estaCheia(FilaEstatica *fila) {
    return (fila->quantidade == MAX);
}

int tamanhoFila(FilaEstatica *fila) {
    return fila->quantidade;
}

void iniciaFila(FilaEstatica *fila) {
    fila->quantidade = 0;
    fila->inicio = 0;
    fila->fim = -1;
}

void inserirFilaEstatica(FilaEstatica *fila, Objeto n) {
    if(estaVazia(fila)) {
        fila->quantidade++;
        fila->fim = fila->inicio = 0;
        fila->vetor[0] = n;
        return;
    }
    if (estaCheia(fila)) {
        printf("\nFila esta cheia\n");
        return;
    }
    fila->fim = (fila->fim + 1) % MAX;
    fila->vetor[fila->fim] = n;
    fila->quantidade++;
}

void imprimirFila(FilaEstatica *fila) {
    printf("Fila = {");
    for (int i = 0; i < tamanhoFila(fila); i++) {
        printf(" %d / %s / %s / %d \n", fila->vetor[(fila->inicio + i) % MAX].id, fila->vetor[(fila->inicio + i) % MAX].nome, fila->vetor[(fila->inicio + i) % MAX].rua, fila->vetor[(fila->inicio + i) % MAX].numero);
    }
    printf("}\n");
}

int removerFilaEstatica(FilaEstatica *fila) {
    if (estaVazia(fila)) {
        printf("\nFila esta vazia\n");
        return 0;
    }
    fila->inicio = (fila->inicio + 1) % MAX;
    fila->quantidade--;

    return 1;
}

bool removerAmigao(FilaEstatica *fila){
    int resp;
    printf("Foi feita a vista?(Digite 1 para sim e 0 para nÃ£o): \n");
    scanf("%d", &resp);
    return resp;
}

typedef struct obj{
    Objeto objetos;
    struct obj *prox;
}Objetos;

typedef struct filaDinamica{
    Objetos* inicio;
    Objetos* fim;
    int tamanho;
} FilaDinamica;

void inicializaFila(FilaDinamica *f){
    f->inicio=NULL;
    f->fim=NULL;
    f->tamanho=0;
}

bool estaVazio(FilaDinamica *f){
    return(f->tamanho==0);
}

int tamanhooFila(FilaDinamica *f){
    return(f->tamanho);
}

void insereFila(FilaDinamica *f, Objeto n){
    Objetos *novo;
    novo=(Objetos*) malloc(sizeof(Objetos));
    novo->objetos=n;
    novo->prox=NULL;

    if(estaVazio(f)==true){
        f->inicio=f->fim=novo;
    }
    else{
        f->fim->prox=novo;
        f->fim=novo;
    }
    f->tamanho++;
}

void imprimeFila(FilaDinamica *f){
    int pos=0;
    for(Objetos* aux=f->inicio; aux!=NULL; aux=aux->prox){
        printf("\n-->>Pos %d ==>> Objetos %d / %s / %s / %d  \n\n", ++pos, aux->objetos.id, aux->objetos.nome, aux->objetos.rua, aux->objetos.numero);
    }
}

void remover(FilaDinamica *f){
    Objeto *aux;
    aux=f->inicio;
    f->inicio=f->inicio->prox;
    free(aux);
    f->tamanho--;
}

void destruirFila(FilaDinamica *f){
    while(f->tamanho!=0) remover(f);
}

int main() {
    FILE *arq;
    FILE *arq2;
    Objeto n;
    int id, numero;
    char aux[100],nome[50],rua[50];


    arq = fopen("visita.txt", "r");
    if (arq == NULL)  // Se houve erro na abertura
    {
        printf("\nProblemas na abertura do arquivo\n");
    }


    FilaEstatica fila;

    FilaDinamica filaD1,filaD2;

    iniciaFila(&fila);

    inicializaFila(&filaD1);

    inicializaFila(&filaD2);

    if (estaVazia(&fila)) {
        printf("Esta vazia\n");
    }
    if (estaCheia(&fila)) {
        printf("Esta cheia\n");
    }

    for (size_t i = 0; i < 10; i++)
    {
        if (fgets(aux, 100, arq) == NULL){
            return;
        }else{
            sscanf(aux, "{ %d; %[^;]; %[^;]; %d }", &n.id, &n.nome, &n.rua, &n.numero);
            inserirFilaEstatica(&fila, n);
            imprimirFila(&fila);
        }
    }

    while (1) {
        if (removerAmigao(&fila) == 1) {
            printf("\nVisitado com sucesso\n");
            insereFila(&filaD2, fila.vetor[(fila.inicio + 0) % MAX]);
            removerFilaEstatica(&fila);
            imprimirFila(&fila);
            if (filaD2.tamanho == 10) {
                printf("Fila 2 cheia\n");
                imprimeFila(&filaD2);
                printf("\nO previsto de vesitas foi atingido\n");
                break;
            }
        } else {
            insereFila(&filaD1, fila.vetor[(fila.inicio + 0) % MAX]);

            removerFilaEstatica(&fila);
            if (fgets(aux, 100, arq) == NULL) {
                printf("Arquivo vazio\n");
            } else {
                sscanf(aux, "{ %d; %[^;]; %[^;]; %d }", &n.id, &n.nome, &n.rua, &n.numero);
                inserirFilaEstatica(&fila, n);
            }
            imprimirFila(&fila);
            if (estaVazia(&fila)){
                imprimeFila(&filaD1);

                break;
            }
        }

    }
    arq2 = fopen("saida.txt", "w");

        if (arq2 == NULL)
        {
            printf("\nProblemas na abertura do arquivo\n");
        }

        fprintf(arq2, "Fila 2: Nao concretizada \n");

        for(Objetos* aux=filaD1.inicio; aux!=NULL; aux=aux->prox){
            fprintf(arq2, "{ %d; %s; %s; %d }\n", aux->objetos.id, aux->objetos.nome, aux->objetos.rua, aux->objetos.numero);
        }

        fprintf(arq2, "\n\n-------------------------------------------------------------------------\n\n");

        fprintf(arq2, "Fila 1: Concretizada \n");

        for(Objetos* aux=filaD2.inicio; aux!=NULL; aux=aux->prox){
            fprintf(arq2, "{ %d; %s; %s; %d }\n", aux->objetos.id, aux->objetos.nome, aux->objetos.rua, aux->objetos.numero);
        }

    destruirFila(&filaD1);
    destruirFila(&filaD2);  
    fclose(arq2);
    fclose(arq);
    return 0;
}