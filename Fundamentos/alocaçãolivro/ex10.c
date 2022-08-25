/**
 * @file ex10.c
 * @author Arthur Henrique de Oliveira Petroli (arthurpetroli@gmail.com)
 * @brief 11) Escreva uma função que receba como parâmetro um valor N e retorne o ponteiro para uma matriz alocada dinamicamente contendo N linhas e N colunas. Essa matriz deve conter o valor 1 na diagonal principal e 0 nas demais posições
 * @version 0.1
 * @date 2022-06-09
 * 
 * @copyright Copyright (c) 2022
 * 
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "ex10cab.c"


int main(){
    int tamanho =0;
    int **matriz;

    printf("Digite a dimecao da matriz: ");
    scanf("%i",&tamanho);

    matriz = ponteiro(matriz,tamanho);

    prencher(matriz,tamanho);

    for (int l = 0; l < tamanho; l++){
        free(matriz[l]);
    }// for

    free(matriz);
    
    return 0;
}