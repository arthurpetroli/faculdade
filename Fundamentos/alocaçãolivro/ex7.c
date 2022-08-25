/**
 * @file ex7.c
 * @author Arthur Henrique de Oliveira Petroli (arthurpetroli@gmail.com)
 * @brief 7) Faça uma função que retorne o ponteiro para um vetor de N elementos inteiros alocados dinamicamente. O array deve ser preenchido com valores de 0 a N − 1.
 * @version 0.1
 * @date 2022-06-09
 * 
 * @copyright Copyright (c) 2022
 * 
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int *ponteiro(int *vetor,int tamanho){
    vetor = (int*) calloc(tamanho,sizeof(int));
    return vetor;
}


int main(){
    int tamanho;

    printf("Digite o tamanho do vetor: ");
    scanf("%i",&tamanho);

    int *vetor;

    vetor = ponteiro(vetor,tamanho);

    for (size_t i = 0; i < tamanho; i++)
    {
        printf("Digite o valores do vetor[%i]: ",i+1);
        scanf("%i",&vetor[i]);
    }

    for (size_t i = 0; i < tamanho; i++)
    {
        printf("%i\n",vetor[i]);
    }

    free(vetor);

    return 0;
    
}