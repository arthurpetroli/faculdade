#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

typedef struct noArv {
    int chave;
    struct noArv *esq;
    struct noArv *dir;
} noArvore;

int estaVazia(noArvore *raiz) {
    return raiz == NULL;
}

void inicializa(noArvore **no) {
    (*no) = NULL;
}

void inserir (noArvore **no, int chave) {
    if (*no == NULL)
    {
        *no = (noArvore *) malloc(sizeof(noArvore));
        (*no)->chave = chave;
        (*no)->esq = NULL;
        (*no)->dir = NULL;
        return;
    }
    else if ((*no)->chave == chave )
    {
        printf("\n Este elemento ja existe %d", chave);
        return;
    }
    

    if (chave < (*no)->chave)
    {
        inserir(&(*no)->esq, chave);
    }else{
        inserir(&(*no)->dir, chave);
    }
        
    
    
}

void imprimirEmOrdem(noArvore **no){
    if (estaVazia(*no))
    {
        return;
    }
    
    imprimirEmOrdem(&(*no)->esq);
    printf("\n%d",(*no)->chave);
    imprimirEmOrdem(&(*no)->dir);
}

void destruirArvore(noArvore **no){
    if (estaVazia(*no))
    {
        return;
    }

    destruirArvore(&(*no)->esq);
    destruirArvore(&(*no)->dir);
    free(*no);
    (*no) = NULL;
}

noArvore *buscarElemento(noArvore **no, int chave){
    if (estaVazia(*no))
    {
        return NULL;
    }
    
    if ((*no)->chave == chave)
    {
        return *no;
    }
    if (chave < (*no)->chave)
    {
        return buscarElemento(&(*no)->esq, chave);
    }else{
        return buscarElemento(&(*no)->dir, chave);
    }
    
}

noArvore *buscarPai(noArvore **no, int chave){
    static noArvore *pai = NULL;
    if (estaVazia(*no))
    {
        return NULL;
    }
    
    if ((*no)->esq != NULL && (*no)->esq->chave == chave)
    {
        return *no;
    }
    if ((*no)->dir != NULL && (*no)->dir->chave == chave)
    {
        return *no;
    }
    if (chave < (*no)->chave)
    {
        return buscarPai(&(*no)->esq, chave);
    }else{
        return buscarPai(&(*no)->dir, chave);
    }
    
}

bool excluirElemento(noArvore **no, int chave){
    noArvore *pai=buscarPai(no, chave);

    if (estaVazia(no)==true)
    {
        return false;
    }

    
}

int main() {
    noArvore *raiz;
    inicializa(&raiz);
    inserir(&raiz, 14);
    inserir(&raiz, 18);
    inserir(&raiz, 20);
    inserir(&raiz, 16);
    inserir(&raiz, 11);

    imprimirEmOrdem(&raiz);

    if(buscarElemento(&raiz, 13)==NULL){
        printf("\nElemento nao encontrado");
    }else{
        printf("\nElemento encontrado");
    }

    excluirElemento((&raiz, 2)==true){
        printf("\nElemento excluido");
    }else{
        printf("\nFalha ao excluir elemento");
    }

    destruirArvore(&raiz);

    raiz == NULL ? printf("\nArvore destruida") : printf("\nArvore nao destruida");

    return EXIT_SUCCESS;
}