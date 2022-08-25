/**
 * @file ex3.c
 * @author Arthur Henrique de Oliveira Petroli (arthurpetroli@gmail.com)
 * @brief 4) Elabore um programa que leia do usuário o tamanho de um vetor a ser lido. Em seguida, faça a alocação dinâmica desse vetor. Por fim, leia o vetor do usuário e o imprima.
 * @date 2022-06-06
 * 
 * @copyright Copyright (c) 2022
 * 
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "colors.h"

int main(){
    int tamanho;

    printf("Digite o tamanho do vetor: ");
    scanf("%i",&tamanho);

    int *vetor = (int*) calloc(tamanho, sizeof(int));

    for (size_t i = 0; i <tamanho; i++)
    {
        printf("\nDigite um valor do vetor para posicao [%i]:",i+1);
        scanf("%i",&vetor[i]);
    }

    for (size_t i = 0; i <tamanho; i++)
    {
        foreground(RED);
        printf("\nO valor do vetor para posicao [%i]: %i",i+1,vetor[i]);
        style(RESETALL);
    }

    free(vetor);
}