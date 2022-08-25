#include <stdio.h>
#include <stdlib.h>

int buscaBinario(int vetor[8],int busca){
    int inicio=0 , meio , fim=8;

    meio = (int) (inicio+fim)/2;

    if (inicio+fim % 2 != 0)
    {
        meio++;
    }

    if (vetor[meio] == busca)
    {
        printf("Seu numero buscado e: %i",vetor[meio]);
    }else if (vetor[meio] < busca)
    {
        inicio = meio - 1;

        if (inicio == busca)
        {
            printf("Seu numero buscado e: %i",vetor[inicio]);
        }

        meio = (int) (inicio+fim)/2;

        if (inicio+fim % 2 != 0)
        {
            meio++;
        }

        if (vetor[meio] == busca)
        {
            printf("Seu numero buscado e: %i",vetor[meio]);
        }else if (vetor[meio] < busca)
        {
            inicio = meio - 1;

            if (inicio == busca)
            {
                printf("Seu numero buscado e: %i",vetor[inicio]);
            }
            else
            {
                printf("Seu numero nao enta no vetor");
            }
            
        }
        else if (vetor[meio] > busca)
        {
            fim = meio - 1;

            if (fim == busca)
            {
                printf("Seu numero buscado e: %i",vetor[fim]);
            }
            else
            {
                printf("Seu numero nao enta no vetor");
            }
            
        }
        
    }else if (vetor[meio] > busca)
    {
        fim = meio - 1;

        if (fim == busca)
        {
            printf("Seu numero buscado e: %i",vetor[fim]);
        }

        meio = (int) (inicio+fim)/2;

        if (inicio+fim % 2 != 0)
        {
            meio++;
        }

        if (vetor[meio] == busca)
        {
            printf("Seu numero buscado e: %i",vetor[meio]);
        }else if (vetor[meio] < busca)
        {
            inicio = meio - 1;

            if (inicio == busca)
            {
                printf("Seu numero buscado e: %i",vetor[inicio]);
            }
            else
            {
                printf("Seu numero nao enta no vetor");
            }
            
        }
        else if (vetor[meio] > busca)
        {
            fim = meio - 1;

            if (fim == busca)
            {
                printf("Seu numero buscado e: %i",vetor[fim]);
            }
            else
            {
                printf("Seu numero nao enta no vetor");
            }
            
        }

    }
}

int main(){
    int vetor[8]={1,2,3,4,5,6,7,8};
    int busca = 6;
    int meio, fim=8, inicio=0;
    
    buscaBinario(vetor,busca);

    return 0;
}