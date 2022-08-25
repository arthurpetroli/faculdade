/**
 * @file ex8.c
 * @author Arthur Henrique de Oliveira Petroli (arthurpetroli@gmail.com)
 * @brief  10) Escreva uma função que receba um valor inteiro positivo N por parâmetro e retorne o ponteiro para um vetor de tamanho N alocado dinamicamente. Esse vetor deverá ter os seus elementos preenchidos com certo valor, também passado por parâmetro.
 * Se N for negativo ou igual a zero, um ponteiro nulo deverá ser retornado.
 * @version 0.1
 * @date 2022-06-09
 * 
 * @copyright Copyright (c) 2022
 * 
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "ex8cab.c"

int main(){
    
    int tamanho;
    int *vetor;

    printf("Digite o tamanho do vetor: ");
    scanf("%i",&tamanho);

    vetor = ponteiro(vetor,tamanho);

    prencher(vetor,tamanho);

    for (size_t i = 0; i < tamanho; i++)
    {
        printf("%i\n",vetor[i]);
    }
    
    free(vetor);

    return 0;
}