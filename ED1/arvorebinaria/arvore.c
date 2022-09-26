#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

typedef struct noArv {
    int chave;
    struct noArv *esq;
    struct noArv *dir;
} noArvore;

void inicializa(noArvore **no) {
    *no = NULL;
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
    if (*no==NULL)
    {
        return;
    }
    
    imprimirEmOrdem(&(*no)->esq);
    printf("\n%d",(*no)->chave);
    imprimirEmOrdem(&(*no)->dir);
}

void imprimirPreOrdem(noArvore **no){
    if (*no==NULL)
    {
        return;
    }

}

int main() {
    noArvore *raiz = NULL;
    inicializa(&raiz);
    inserir(&raiz, 14);
    inserir(&raiz, 18);
    inserir(&raiz, 20);
    inserir(&raiz, 16);
    inserir(&raiz, 11);

    imprimirEmOrdem(&raiz);
    imprimirPreOrdem(&raiz);
    imprimirPosOrdem(&raiz);
}