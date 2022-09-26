/**
 * @file filatrabalho.c
 * @author Arthur Petroli  RA:2408732  //  Joao Vitor Yoshida  RA:2419904
 * @brief Codigo feito com a finalidade de gerenciar casas visitadas para controle de prevençao de doenças.
 * @version 0.1
 * @date 2022-09-26
 * 
 * @copyright Copyright (c) 2022
 * 
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#define MAX 10

typedef struct { //criando estrutura objeto de cada casa visitada
    int id;
    char nome[50];
    char rua[50];
    int numero;
} Objeto;


//-------------------------------FUNÇOES DE FILA ESTICA----------------------------------

/**
 * @brief //criando estrutura de filaestatica
 * 
 */
typedef struct { 
    int inicio;
    int fim;
    int quantidade;
    Objeto vetor[MAX];
} FilaEstatica;


/**
 * @brief //vendo se a filaestatica ta vazia
 * 
 * @param fila 
 * @return int 
 */
int estaVaziaEstatica(FilaEstatica *fila) { 
    return (fila->quantidade == 0);
}


/**
 * @brief //vendo se a filaestatica ta cheia
 * 
 * @param fila 
 * @return int 
 */
int estaCheiaEstatica(FilaEstatica *fila) { 
    return (fila->quantidade == MAX);
}


/**
 * @brief //vendo tamanho da filaestatica
 * 
 * @param fila 
 * @return int 
 */
int tamanhoFilaEstatica(FilaEstatica *fila) { 
    return fila->quantidade;
}


/**
 * @brief //iniciando filaestatica
 * 
 * @param fila 
 */
void iniciaFilaEstatica(FilaEstatica *fila) { 
    fila->quantidade = 0;
    fila->inicio = 0;
    fila->fim = -1;
}


/**
 * @brief //inserindo objetos na filaestatica
 * 
 * @param fila 
 * @param n 
 */
void inserirFilaEstatica(FilaEstatica *fila, Objeto n) {
    if(estaVaziaEstatica(fila)) {
        fila->quantidade++;
        fila->fim = fila->inicio = 0;
        fila->vetor[0] = n;
        return;
    }
    if (estaCheiaEstatica(fila)) {
        printf("\nFila esta cheia\n");
        return;
    }
    fila->fim = (fila->fim + 1) % MAX;
    fila->vetor[fila->fim] = n;
    fila->quantidade++;
}


/**
 * @brief //mostra os conteudos da filaestatica
 * 
 * @param fila 
 */
void imprimirFilaEstatica(FilaEstatica *fila) {
    for (int i = 0; i < tamanhoFilaEstatica(fila); i++) {
        printf(" %d | %s | %s %d\n", fila->vetor[(fila->inicio + i) % MAX].id, fila->vetor[(fila->inicio + i) % MAX].nome, fila->vetor[(fila->inicio + i) % MAX].rua, fila->vetor[(fila->inicio + i) % MAX].numero);
    }
    printf("\n|----------------------------------------------------------|\n\n");
}


/**
 * @brief //apaga um objeto da filaestatica
 * 
 * @param fila 
 * @return int 
 */
int removerFilaEstatica(FilaEstatica *fila) {
    if (estaVaziaEstatica(fila)) {
        printf("\nFila esta vazia\n");
        return 0;
    }
    fila->inicio = (fila->inicio + 1) % MAX;
    fila->quantidade--;

    return 1;
}


/**
 * @brief //resposta do usuario se a casa foi visitada(menu de visitas)
 * 
 * @param fila 
 * @return int 
 */
int contadorVisita(FilaEstatica *fila){
    int resp;

        printf(" [1] Visita concretizada\n"
               " [0] Visita nao concretizada\n"
               " Digite a opcao: ");
        scanf("%d", &resp);
        system("clear");
    return resp;
}


//-------------------------------FUNÇOES DE FILA DINAMICA----------------------------------


/**
 * @brief //criando estrutura de ponteiro para proxima filadinamica
 * 
 */
typedef struct obj{
    Objeto objetos;
    struct obj *prox;
}Objetos;


/**
 * @brief //criando estrutura de filaestatica
 * 
 */
typedef struct filaDinamica{
    Objetos* inicio;
    Objetos* fim;
    int tamanho;
} FilaDinamica;


/**
 * @brief //iniciando filadinamica
 * 
 * @param f 
 */
void inicializaFilaDinamica(FilaDinamica *f){
    f->inicio=NULL;
    f->fim=NULL;
    f->tamanho=0;
}


/**
 * @brief //vendo se a filadinamica ta vazia
 * 
 * @param f 
 * @return true 
 * @return false 
 */
bool estaVazioDinamica(FilaDinamica *f){
    return(f->tamanho==0);
}


/**
 * @brief //inserindo objetos na filadinamica
 * 
 * @param f 
 * @param n 
 */
void insereFilaDinamica(FilaDinamica *f, Objeto n){
    Objetos *novo;
    novo=(Objetos*) malloc(sizeof(Objetos));
    novo->objetos=n;
    novo->prox=NULL;

    if(estaVazioDinamica(f)==true){
        f->inicio=f->fim=novo;
    }
    else{
        f->fim->prox=novo;
        f->fim=novo;
    }
    f->tamanho++;
}


/**
 * @brief //mostra os conteudos da filadinamica
 * 
 * @param f 
 */
void imprimeFilaDinamica(FilaDinamica *f){
    int pos=0;
    for(Objetos* aux=f->inicio; aux!=NULL; aux=aux->prox){
        printf("\n-->>Pos %d ==>> Objetos %d / %s / %s / %d  \n\n", ++pos, aux->objetos.id, aux->objetos.nome, aux->objetos.rua, aux->objetos.numero);
    }
}


/**
 * @brief //apaga um objeto da filadinamica
 * 
 * @param f 
 */
void removerFilaDinamica(FilaDinamica *f){
    Objetos *aux;
    aux=f->inicio;
    f->inicio=f->inicio->prox;
    free(aux);
    f->tamanho--;
}


/**
 * @brief //destroi a filaestatica inteira
 * 
 * @param f 
 */
void destruirFilaDinamica(FilaDinamica *f){
    while(f->tamanho!=0) removerFilaDinamica(f);
}


//-------------------------------MAIN----------------------------------


int main(int argc, char* argv[]) {
    FILE *arq;                                                                                                                              //variavel do marquivo de entrada 
    FILE *arq2;                                                                                                                             //variavel do arquivo de saida
    Objeto n;                                                                                                                               //variavel que recebera informaçoes das casas visitadas ou nao visitadas
    int id, numero;                                                                                                                         //variaveis que receberam as informaçoes do arquivo formatado
    char aux[100],nome[50],rua[50];                                                                                                         //variaveis que receberam as informaçoes do arquivo formatado


    arq = fopen(argv[1], "r");                                                                                                              //abrindo o arquivo de entrada
    if (arq == NULL)  // Se houve erro na abertura
    {
        printf("\nProblemas na abertura do arquivo\n");
    }


    FilaEstatica fila;                                                                                                                      //iniciando 1 filas estatica pela funçao filaestatica na main
    iniciaFilaEstatica(&fila);                                                                                                              //chamando a funçao iniciaFilaEstatica
    FilaDinamica filaD1,filaD2;                                                                                                             //iniciando 2 filas dinamica pela funçao filadinamica na main
    inicializaFilaDinamica(&filaD1);                                                                                                        //chamando a funçao inicializaFilaDinamica
    inicializaFilaDinamica(&filaD2);                                                                                                        //chamando a funçao inicializaFilaDinamica

    for (size_t i = 0; i < 10; i++)                                                                                                         //repete 10 vezes
    {
        if (fgets(aux, 100, arq) == NULL){                                                                                                  //le 1 linha do arquivo e ve se ja chegou ate o final
            return;
        }else{                                                                                                                              //enquanto nao chegar no final ira pegar as inforamçoes do arquivo e as formatara e salvara em saida.txt
            sscanf(aux, "{ %d; %[^;]; %[^;]; %d }", &n.id, &n.nome, &n.rua, &n.numero);
            inserirFilaEstatica(&fila, n);
            imprimirFilaEstatica(&fila);
        }
    }

    while (!estaVaziaEstatica(&fila)) {                                                                                                     //enquanto a filaestatica nao for vazia continua no loop
        switch(contadorVisita(&fila)){                                                                                                      //switch para cada resposta do usuario
            case 0:
                printf("\nSem sucesso na visita\n\n");                                                                                      //se a resposta for 0 ira tirar da filaestatica e sera mandado para fila dinamica de nao concretizados, e sera adicionado o proximo elemento do arquivo
                insereFilaDinamica(&filaD1, fila.vetor[(fila.inicio + 0) % MAX]);

                removerFilaEstatica(&fila);
                if (fgets(aux, 100, arq) == NULL) {
                    printf("Arquivo vazio\n");
                } else {
                    sscanf(aux, "{ %d; %[^;]; %[^;]; %d }", &n.id, &n.nome, &n.rua, &n.numero);
                    inserirFilaEstatica(&fila, n);
                }
                imprimirFilaEstatica(&fila);
                if (estaVaziaEstatica(&fila)){
                    imprimeFilaDinamica(&filaD1);
                    break;
                }
            break;
            case 1:                                                                                                                         //se a resposta for 1 ira tirar da filaestatica e sera mandado para fila dinamica de concretizados
                printf("\nVisitado com sucesso\n\n");
                insereFilaDinamica(&filaD2, fila.vetor[(fila.inicio + 0) % MAX]);
                removerFilaEstatica(&fila);
                imprimirFilaEstatica(&fila);
                if (filaD2.tamanho == 10) {
                    imprimeFilaDinamica(&filaD2);
                    printf("\nO previsto de visitas foi atingido\n\n");
                    break;
                }
            break;
            default:                                                                                                                       //caso o usuaria digite uma resposta nao valida
                printf("Opcao invalida!\n");
        }
    }

    arq2 = fopen(argv[2], "w");                                                                                                           //abre o arquivo para escrita em saida.txt
        if (arq2 == NULL)   // Se houve erro na abertura
        {
            printf("\nProblemas na abertura do arquivo\n");
        }

        fprintf(arq2, "-------------------------------------------------------------------------\n\n");
        fprintf(arq2, "Visitas concretizadas: \n");                                                                                        //resposta para fila concretizada

        for(Objetos* aux = filaD2.inicio; aux != NULL; aux = aux->prox){                                                                  //le as informaçoes da filadinamica de concretizadas e escreve no arquivo
            fprintf(arq2, "{ %d; %s; %s; %d }\n", aux->objetos.id, aux->objetos.nome, aux->objetos.rua, aux->objetos.numero);
        }

        fprintf(arq2, "\n-------------------------------------------------------------------------\n\n");

        fprintf(arq2, "Visitas nao concretizadas: \n");                                                                                    //resposta para fila nao concretizada

        for(Objetos* aux = filaD1.inicio; aux != NULL; aux = aux->prox){                                                                  //le as informaçoes da filadinamica de nao concretizadas e escreve no arquivo
            fprintf(arq2, "{ %d; %s; %s; %d }\n", aux->objetos.id, aux->objetos.nome, aux->objetos.rua, aux->objetos.numero);
        }

        fprintf(arq2, "\n-------------------------------------------------------------------------");

        destruirFilaDinamica(&filaD1);                                                                                                     //destroi a fila dinamica de nao concretizadas
        destruirFilaDinamica(&filaD2);                                                                                                     //destroi a fila dinamica de concretizadas
        fclose(arq2);                                                                                                                      //fecha o arquivo de saida
        fclose(arq);                                                                                                                       //fecha o arquivo de entrada
        return 0;
}