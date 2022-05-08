/**
 * @file ex3.c
 * @author Arthur Petroli
 * @brief Escreva uma função que receba como parâmetro dois vetores via referência( A e B)
e o tamanho N. A função deve retornar o ponteiro para um vetor C de tamanho N
alocado dinamicamente, em que:
C[i] = A[i] * B[i]
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
    int N;
    
    printf("Digite o tamanho do vetor:");
    scanf("%i",&N);

    int vetorA[N];
    int vetorB[N];

    for (size_t i = 0; i < N; i++)
    {
        printf("\nDigite um valor de vetorA para posicao [%i]:",i+1);
        scanf("%i",&vetorA[i]);
    }

    for (size_t i = 0; i < N; i++)
    {
        printf("\nDigite um valor de vetorB para posicao [%i]:",i+1);
        scanf("%i",&vetorB[i]);
    }

    int *vetorC = (int*) calloc(N, sizeof(int));

    if(vetorC == NULL){
        printf("Erro: Memória Insuficiente!\n");
        exit(1);
    }

    for (size_t i = 0; i < N; i++)
    {
        vetorC[i] = vetorA[i] * vetorB[i];
    }

    for (size_t i = 0; i < N; i++)
    {
        printf("\nO valor do vetorC para posicao [%i]: %i",i+1,vetorC[i]);
    }
    
    free(vetorC);

    return 0;
}