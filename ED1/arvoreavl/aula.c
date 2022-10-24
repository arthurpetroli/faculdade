#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <time.h>


typedef struct  noArvore
{
    int chave;
    struct  noArvore* dir;    
    struct  noArvore* esq;
    int altura;  
}NoArvore;




NoArvore* inicializaArvore(){
    return NULL;
}

bool estaVazia(NoArvore** no){
    return((*no)==NULL);
}

int maxAlturaFilhos(NoArvore **no){
    if ((*no)->esq==NULL && (*no)->dir==NULL){
        return -1;
    }
    else if ((*no)->esq==NULL){
        return (*no)->dir->altura;
    }
    else if ((*no)->dir==NULL){
        return (*no)->esq->altura;
    }  
    else{
        return ((*no)->dir->altura > (*no)->esq->altura) ? (*no)->dir->altura : (*no)->esq->altura;
    }
    
}

int altura(NoArvore **no){
    if ((*no)==NULL){
        return -1;
    }
    else{
        return (*no)->altura;
    }
}

void rotacaoEsquerda(NoArvore **no){
    NoArvore *aux;
    aux = (*no)->dir;
    (*no)->dir = aux->esq;
    aux->esq = (*no);
    (*no)->altura = maxAlturaFilhos(no)+1;
    aux->altura = maxAlturaFilhos(&aux)+1;
    (*no) = aux;
}

void insereArvore(NoArvore **no, int chave){
    if((*no)==NULL){
        (*no)=(NoArvore*) malloc(sizeof(NoArvore));
        (*no)->chave=chave;
        (*no)->dir=(*no)->esq=NULL;
        (*no)->altura=0;
        return;
    }
   if((*no)->chave == chave){
        printf("\nElemento repetido");
        return;
    }
    (*no)->chave > chave ? insereArvore(&((*no)->esq),chave): insereArvore(&((*no)->dir), chave);
    (*no)->altura = maxAlturaFilhos(no) + 1;
    if ((*no)->dir->altura - (*no)->esq->altura == 2){
        if ((*no)->dir->dir->altura - (*no)->esq->altura == 1){
            rotacaoEsquerda(no);
        }
        else{
            rotacaoDuplaEsquerda(no);
        }
    }
    else if ((*no)->esq->altura - (*no)->dir->altura == -2){
        if ((*no)->esq->esq->altura - (*no)->dir->altura == 1){
            rotacaoDireita(no);
        }
        else{
            rotacaoDuplaDireita(no);
        }
    }
}

void imprimeEmOrdem(NoArvore **no){
    if(*no==NULL) return;
    imprimeEmOrdem(&((*no)->esq));
    printf("\n--> %d [h=%d] ", (*no)->chave, (*no)->altura);
    imprimeEmOrdem(&((*no)->dir));
}

void destroiArvore(NoArvore **no){
    if((*no)==NULL) return;
    destroiArvore(&((*no)->esq)); 
    destroiArvore(&((*no)->dir));
    free(*no);
    (*no)=NULL;
}

NoArvore* maiorNoSubArvEsq(NoArvore **no){
    if((*no)->dir==NULL){ 
        NoArvore* aux = (*no);
        if((*no)->esq!=NULL){
            *no = (*no)->esq;
            return (aux);
        }else{
            *no=NULL;
            return (aux);
        }
        
        return (aux);
    }    
    return maiorNoSubArvEsq(&(*no)->dir);
}

NoArvore *menorNoSubArvDir(NoArvore **no){
    if((*no)->esq==NULL){
        NoArvore *aux=*no;
        if((*no)->dir!=NULL){
            *no=(*no)->dir;
        }
        else{
           *no=NULL;
           return aux; 
        } 
        return aux;
    }
    return menorNoSubArvDir(&(*no)->esq);
}

void excluiElemDir(NoArvore **no, int chave){
    if(*no==NULL){
        printf("\n\n------------\n\n\t Chave nao encontrada \n\n----------------\n");
        return;
    }
    if((*no)->chave == chave){
        if((*no)->esq== NULL && (*no)->dir==NULL){
           free(*no);
           (*no)=NULL; 
           return;
        }
        if((*no)->esq== NULL){
            NoArvore *remove=*no;
            *no= (*no)->dir; 
            free(remove);
            return;
        }
        if((*no)->dir== NULL){
            NoArvore *remove=*no;
            *no= (*no)->esq; 
            free(remove);
            return;
        }
        //NoArvore *elem = maiorNoSubArvEsq(&(*no)->esq); ou
        NoArvore *elem = maiorNoSubArvEsq(&(*no)->dir);    
        NoArvore *remove=*no;
        elem->dir=(*no)->dir;
        elem->esq=(*no)->esq;
        *no= elem; 
        free(remove);
        return;   

    }
    if((*no)->chave > chave){
        excluiElemDir(&(*no)->esq, chave);
    }
    
    else excluiElemDir(&(*no)->dir, chave);
}

void excluiElemEsq(NoArvore **no, int chave){
    if(*no==NULL){
        printf("\n\n------------\n\n\t Chave nao encontrada \n\n----------------\n");
        return;
    }
    if((*no)->chave == chave){
        if((*no)->esq== NULL && (*no)->dir==NULL){
           free(*no);
           (*no)=NULL; 
           return;
        }
        if((*no)->esq== NULL){
            NoArvore *remove=*no;
            *no= (*no)->dir; 
            free(remove);
            return;
        }
        if((*no)->dir== NULL){
            NoArvore *remove=*no;
            *no= (*no)->esq; 
            free(remove);
            return;
        }
        //NoArvore *elem = maiorNoSubArvEsq(&(*no)->esq); ou
        NoArvore *elem = menorNoSubArvDir(&(*no)->esq);    
        NoArvore *remove=*no;
        elem->dir=(*no)->dir;
        elem->esq=(*no)->esq;
        *no= elem; 
        free(remove);
        return;   

    }
    if((*no)->chave > chave){
        excluiElemDir(&(*no)->esq, chave);
    }
    
    else excluiElemDir(&(*no)->dir, chave);
}

NoArvore* buscarElem(NoArvore **no, int chave){
    if (*no == NULL)
    {
        return NULL;
    }
    if ((*no)->chave == chave)
    {
        return *no;
    }
    if ((*no)->chave > chave)
    {
        return buscarElem(&(*no)->esq, chave);
    }else{
        return buscarElem(&(*no)->dir, chave);
    }
      
}

int main(void){

    NoArvore *raiz = inicializaArvore();

    insereArvore(&raiz, 10);

    
   
    insereArvore(&raiz, 15);
    insereArvore(&raiz, 13);
    insereArvore(&raiz, 16);
    insereArvore(&raiz, 12);
    insereArvore(&raiz, 14); 

    insereArvore(&raiz, 5);
    insereArvore(&raiz, 3);
    insereArvore(&raiz, 7);
    insereArvore(&raiz, 6);

    insereArvore(&raiz, 2);
    insereArvore(&raiz, 20);

    printf("\n\n-----------------INICIO------------------\n\n");
    imprimeEmOrdem(&raiz);
    printf("\n\n-----------------FIM------------------\n\n");

    excluiElemDir(&raiz, 10);

    if(buscarElem(&raiz, 5)!= NULL){
        printf("Esta presente");
    }else{
        printf("Nao esta presente");
    }

    printf("\n\n-----------------Inicio------------------\n\n");
    imprimeEmOrdem(&raiz);
    printf("\n\n-----------------Fim------------------\n\n");

    excluiElemEsq(&raiz, 7);
        
    printf("\n\n-----------------Inicio------------------\n\n");
    imprimeEmOrdem(&raiz);
    printf("\n\n-----------------Fim------------------\n\n");

    destroiArvore(&raiz);
}