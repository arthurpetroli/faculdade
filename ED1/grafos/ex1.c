#include<stdio.h>
#include<stdlib.h>
#include<stdbool.h>


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
}


int main(void){
    GrafoMatriz grafo;
    bool *visitado;
    
    inicializa(&grafo, 5, true);
    insereAresta(&grafo, 1, 2);
    insereAresta(&grafo, 1, 3);
    insereAresta(&grafo, 2, 3);
    insereAresta(&grafo, 2, 5);
    insereAresta(&grafo, 3, 4);
    insereAresta(&grafo, 4, 5);

    imprimeGrafo(&grafo);

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