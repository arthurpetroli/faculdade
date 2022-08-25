#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int **ponteiro(int **matriz,int tamanho){
    matriz = (int**) calloc(tamanho,sizeof(int*));
    for (size_t i = 0; i < tamanho; i++)
    {
        matriz[i] = (int*) calloc(tamanho,sizeof(int));
    }

    return matriz;
}


void prencher(int **matriz,int tamanho){
    for (size_t i = 0; i < tamanho; i++)
    {
        for (size_t j = 0; j < tamanho; j++)
        {
            if (i == j)
            {
                matriz[i][j] = 1;
            }else
            {
                matriz[i][j] = 0;
            }    
        } 
    }

    for (size_t i = 0; i < tamanho; i++)
    {
        for (size_t j = 0; j < tamanho; j++)
        {
            printf("%i  ",matriz[i][j]); 
        }
        printf("\n");
    }    
}
