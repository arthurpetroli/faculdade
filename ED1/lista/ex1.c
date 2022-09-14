#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>

typedef struct objeto
{
    int chave;
    struct objeto* prox;
}NoLista;

typedef struct listaEncadeada
{
    NoLista *inicio;
    int numElemeto;
}Lista;

void inicializarLista(Lista *l){
    l->inicio=NULL;
    l->numElemeto=0;
}

bool estaVazia(Lista *l){
    return(l->numElemeto==0);
}

int tamanhoLista(Lista *l){
    return(l->numElemeto);
}

void insereElemento(Lista *l, int chave){
    NoLista *novo; 
    novo= (NoLista *) malloc(sizeof(NoLista));
    novo->chave = chave; 
    novo->prox=NULL;
    if (estaVazia(l)==true) 
    {
        l->inicio=novo;
    }
    else if (chave < l->inicio->chave)
    {
        novo->prox=l->inicio;
        l->inicio = novo;
    }
    else{
        NoLista *aux=l->inicio;
        while (aux->prox!=NULL && aux->prox->chave < chave )
        {
            aux=aux->prox;
            novo->prox=aux->prox;
            aux->prox=novo;
        }
        
    }
    
    l->numElemeto++;
    
}

void imprimeLista(Lista *l){
    NoLista *aux=l->inicio;
    int pos=0;
    printf("\n==============Inicio lista==================\n");
    while (aux!=NULL)
    {
        printf("\nPos %d -----> %d", ++pos, aux->chave);
        aux=aux->prox;
    }
    printf("\n==============Fim Lista==================\n");
}

void destroiLista(Lista *l){
    NoLista *aux=l->inicio;
    while (l->inicio!=NULL)
    {
        l->inicio=l->inicio->prox;
        free(aux);
        aux=l->inicio;
        l->numElemeto--;
    }
    
}

bool pesquisar(Lista *l, int pesq){
    NoLista *aux=l->inicio;
    while (aux!=NULL)
    {
        aux=aux->prox;
        if (pesq == aux->chave)
        {
            return(true);
        }
        
    } 
    return(false);
}

int main(){
    Lista lista;

    inicializarLista(&lista);

    insereElemento(&lista,0);
    insereElemento(&lista,-1);
    insereElemento(&lista,24);
    insereElemento(&lista,5);

    imprimeLista(&lista);

    printf("\n %d",pesquisar(&lista, 5));

    destroiLista(&lista);
    printf("...destroi");
    imprimeLista(&lista);

    return EXIT_SUCCESS;
}