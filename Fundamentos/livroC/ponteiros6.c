/**
 * @file ponteiros6.c
 * @author Arthur Henrique de Oliveira Petroli (arthurpetroli@gmail.com)
 * @brief Crie um programa que contenha um array com cinco elementos inteiros. Leia esse array do teclado e imprima o endereço das posições contendo valores pares.
 * @version 0.1
 * @date 2022-05-12
 * 
 * @copyright Copyright (c) 2022
 * 
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void leitura(int vetor[5] , int *ptr){

    for (size_t i = 0; i < 5; i++)
    {
        ptr = &vetor[i];
        if (vetor[i] % 2 == 0)
        {
            printf("%i\n",*ptr);
        }
    }
    
}

int main(){
    int vetor[5];
    int *ptr;

    for (size_t i = 0; i < 5; i++)
    {
        printf("Digite valor para completar o vetor[%i]:",i);
        scanf("%i",&vetor[i]);
        setbuf(stdin,NULL);
    }
    
    leitura(vetor,ptr);

    return 0;

}
