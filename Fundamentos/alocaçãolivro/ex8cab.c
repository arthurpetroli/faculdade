#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int *ponteiro(int *vetor,int tamanho){
    if (tamanho > 0)
    {
        int *vetor = (int*) calloc(tamanho,sizeof(int));
        return vetor;
    }else
    {
        int *vetor = NULL;
        return vetor;
    }
}

void prencher(int *vetor,int tamanho){
    for (size_t i = 0; i < tamanho; i++)
    {
        printf("Digite o valor para o vetor[%i]: ",i+1);
        scanf("%i",&vetor[i]);
    }
}