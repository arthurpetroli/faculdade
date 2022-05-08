/**
 * @file ex4.c
 * @author Arthur Petroli
 * @brief Escreva uma função que receba como parâmetro um valor L e um valor C e retorne
o ponteiro para uma matriz alocada dinamicamente contendo L linhas e C colunas.
Essa matriz deve ser inicializada com o valor 0 em todas as suas posições.
 * @version 0.1
 * @date 2022-05-08
 * 
 * @copyright Copyright (c) 2022
 * 
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(){
    int L;
    int C;
    
    printf("Digite o tamanho da linha:");
    scanf("%i",&L);

    printf("Digite o tamanho da coluna:");
    scanf("%i",&C);
    
    int **matriz = (int**) calloc(L, sizeof(int*));

    for (size_t i = 0; i < L; i++)
    {
        matriz[i] = (int *) malloc(L * sizeof(int));
    }

    if(matriz == NULL){
        printf("Erro: Memória Insuficiente!\n");
        exit(1);
    }

    for (size_t i = 0; i < L; i++)
    {
        for (size_t j = 0; j < C; j++)
        {
            matriz[i][j] = 0;
        }
    }

    for (size_t i = 0; i < L; i++)
    {
        for (size_t j = 0; j < C; j++)
        {
           printf("%i",matriz[i][j]);
        }
        printf("\n");
    }

    for (size_t i = 0; i < L; i++)
    {
        free(matriz[i]);
    }

    free(matriz);

    return 0;
}