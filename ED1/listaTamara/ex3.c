#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(){
    int *vet , tam;

    printf("Digite o tamanho do vetor: \n");
    scanf("%d", &tam);

    vet = (int *) malloc(tam * sizeof(int));

    for (size_t i = 0; i < tam; i++)
    {
        vet[i] = rand() % tam;
    }

    for (size_t i = 0; i < tam; i++)
    {
        printf("Valores do vetor[%d] = %i\n",i,vet[i]);
    }
    
    free(vet);

    return 0;   
}