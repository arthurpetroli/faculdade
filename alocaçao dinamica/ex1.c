/**
 * @file ex1.c
 * @author Arthur Petroli
 * @brief Elabore um programa que leia do usuário o tamanho de um vetor a ser lido. Em
seguida, faça a alocação dinâmica desse vetor. Por fim, leia o vetor do usuário e o
imprima.
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
    int tamanho;
    
    printf("Digite o tamanho do vetor:");
    scanf("%i",&tamanho);

    int *vetor = (int*) calloc(tamanho, sizeof(int));

    if(vetor == NULL){
        printf("Erro: Memória Insuficiente!\n");
        exit(1);
    }

    for (size_t i = 0; i < tamanho; i++)
    {
        printf("\nDigite um valor para posicao [%i]:",i+1);
        scanf("%i",&vetor[i]);
    }

    for (size_t i = 0; i < tamanho; i++)
    {
        printf("\nO valor da posicao [%i]: %i",i+1, vetor[i]);
    }
    
    free(vetor);

    return 0;
}

