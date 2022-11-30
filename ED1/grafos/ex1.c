#include<stdio.h>
#include<stdlib.h>
#include<stdbool.h>

//////FILA DINAMICA--------------------------------------------------
typedef struct NoFila *PtrNoFila;

typedef struct NoFila
{
    int conteudo;
    PtrNoFila proximo;
} NoFila;

typedef struct
{
    PtrNoFila inicio;
    PtrNoFila final;
    int quantidade;
} FilaDinamica;

void iniciaFilaDinamica(FilaDinamica *fila) {
    fila->final = NULL;
    fila->inicio = NULL;
    fila->quantidade = 0;
}

int vaziaFilaDinamica(FilaDinamica *fila) {
    return (fila->inicio == NULL);
}

int tamanhoFilaDinamica(FilaDinamica *fila) {
    return fila->quantidade;
}

// Final

// Inicio

// Funcoes de Modificacao
void inserirFilaDinamica(FilaDinamica *fila, int n) {
    // Criar aux de NoFila, alocar mem, copiar informacao pra ele
    PtrNoFila aux;
    aux = (PtrNoFila) malloc(sizeof(NoFila));
    aux->conteudo = n;
    if (vaziaFilaDinamica(fila)) { // Primeira insercao
        fila->inicio = fila->final = aux; // inicio e final da fila apontam pro novo no
        aux->proximo = NULL;
    } else { // Demais insercoes
        aux->proximo = fila->final->proximo; // Proximo do aux aponta para quem Ã© o prox do fim (NULL)
        fila->final->proximo = aux; // Proximo do fim aponta para o novo elemento
        fila->final = fila->final->proximo; // Fim recebe o proximo do fim
    }
    fila->quantidade++;
}

void imprimirFila(FilaDinamica *fila) {
    printf("fila = {");
    for (PtrNoFila i = fila->inicio; i != NULL; i = i->proximo) {
        printf(" %d ", i->conteudo);
    }
    printf("}\n");
}

void removerFilaDinamica(FilaDinamica *fila) {
    if (!vaziaFilaDinamica(fila)) {
        //ptr auxiliar
        PtrNoFila aux;
        //copiar a info pro user
        aux = fila->inicio;
        //att o inicio do prox dele
        fila->inicio = fila->inicio->proximo;
        free(aux);
        //decrementa qtd
        fila->quantidade--;
    } else {
        printf("Fila esta vazia\n");
    }
}

void destruirFila(FilaDinamica *fila) {
    while (fila->quantidade != 0) {
        removerFilaDinamica(fila);
    }
}

//////GRAFO-------------------------------------------------

typedef struct grafoMatriz{
    int qtdeV;
    int qtdeA;
    bool dirigido;
    int **matriz;
}GrafoMatriz; 

void inicializa (GrafoMatriz *g, int qtdeV, bool dirigido){
    int i, j;
    g->qtdeV = qtdeV;
    g->qtdeA = 0;
    g->dirigido = dirigido;
    g->matriz = (int**) malloc(qtdeV * sizeof(int*));
    for (i = 0; i < qtdeV; i++){
        g->matriz[i] = (int*) malloc(qtdeV * sizeof(int));
        for (j = 0; j < qtdeV; j++){
            g->matriz[i][j] = 0;
        }
    }
}

void insereAresta(GrafoMatriz *g, int v1, int v2){
    g->qtdeA++;

    g->matriz[v1-1][v2-1] = 1;

    if (g->dirigido == false){
        g->matriz[v2-1][v1-1] = 1;
    }
}

void imprimeGrafo(GrafoMatriz *g){
    int i, j;
    printf("\n=======================================");
    printf("\n------- Meu grafo tem %d arestas ------", g->qtdeA);
    printf("\n=======================================\n");
    for (i = 0; i < g->qtdeV; i++){
        for (j = 0; j < g->qtdeV; j++){
            if (g->matriz[i][j] == 1){
                if (g->dirigido == true){
                    printf("< %d, %d >\n", i+1, j+1);
                }
                else{
                    printf("( %d, %d )\n", i+1, j+1);
                } 
            }
        }
             
    }
}

void destroi (GrafoMatriz *g){
    int i;
    for(i=0; i<g->qtdeV; i++){
        free(g->matriz[i]);
    }
    free(g->matriz);
}

bool existeAresta(GrafoMatriz *g, int v1, int v2){
    return(g->matriz[v1-1][v2-1] > 0);
}

void DFS(GrafoMatriz *g, int v, bool *visitado){
    int i;
    visitado[v-1] = true;
    printf("%d ", v);
    for (i = 0; i < g->qtdeV; i++){
        if (g->matriz[v-1][i] == 1 && visitado[i] == false){
            DFS(g, i+1, visitado);
        }
    }

    visitado[v-1] = 2;

    for(int i = 0; i < g->qtdeV; i++){
        if(visitado[i] == false){
            DFS(g, i+1, visitado);
        }
        visitado[i] = 2;
    }
}

void bfs(GrafoMatriz *g, int ini){
    FilaDinamica f;
    bool visitado[g->qtdeV];
    ini--;
    iniciaFilaDinamica(&f);
    
    for(int i = 0; i < g->qtdeV; i++){
        visitado[i] = false;
    }

    visitado[ini] = true;
    inserirFilaDinamica(&f, ini);
    printf("%d ", ini+1);

    inserirFilaDinamica(&f, ini);
    do
    {
      while (vaziaFilaDinamica(&f) != true){
        for (int i = 0; i < g->qtdeV; i++){
            if (g->matriz[f.inicio->conteudo][i] == 1 && visitado[i] == false){
                visitado[i] = true;
                inserirFilaDinamica(&f, i);
                printf("%d ", i+1);
            }
            }   
            removerFilaDinamica(&f);
        }
        for (int i = 0; i < g->qtdeV; i++)
        {
            if (visitado[i] == false)
            {
                visitado[i] = true;
                inserirFilaDinamica(&f, i);
                printf("%d ", i+1);
                break;
            }
            
        }
          
    } while (vaziaFilaDinamica(&f) == false);
    destruirFila(&f);
    
}


int main(void){
    GrafoMatriz grafo;
    bool *visitado;
    
    inicializa(&grafo, 5, true);
    insereAresta(&grafo, 1, 2);
    insereAresta(&grafo, 2, 5);
    insereAresta(&grafo, 3, 1);
    insereAresta(&grafo, 3, 2);
    insereAresta(&grafo, 3, 4);
    insereAresta(&grafo, 4, 5);

    imprimeGrafo(&grafo);

    bfs(&grafo, 1);

    if (existeAresta (&grafo, 3, 4)==true){
        printf("\nExiste aresta");
    }
    else{
        printf("\nNao existe aresta");
    }
    printf("\n");

    visitado = (bool*) calloc(grafo.qtdeV, sizeof(bool));

    DFS(&grafo, 1, visitado);

    destroi(&grafo);

    return 0;
}