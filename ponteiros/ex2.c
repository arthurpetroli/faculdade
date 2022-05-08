/**
 * @file ex2.c
 * @author Arthur Petroli
 * @brief Crie um programa que contenha um vetor float (tamanho 10). Imprima o
 * endereço de cada posição desse vetor
 * @version 0.1
 * @date 2022-05-06
 *
 * @copyright Copyright (c) 2022
 *
 */

#include <stdio.h>
#include <stdlib.h>
#define MAX 10

int main()
{
    float vetor[MAX];
    float *pontoVetor = vetor;

    printf("Digite os numeros do vetor:\n");
    for (int i = 0; i < MAX; i++)
    {
        printf("Numero %i: ", i + 1);
        scanf("%f", &vetor[i]);
        setbuf(stdin, NULL);
    }
    printf("\n");
    for (int i = 0; i < MAX; i++)
    {
        printf("Numero: %f - Endereco %p: \n", vetor[i], pontoVetor + i);
        //printf("Numero: %f - Endereco %p: \n", vetor[i], *(pontoVetor + i));
        printf("\n");
    }
    return 0;
}