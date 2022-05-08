/**
 * @file ex4.c
 * @author Arthur Petroli
 * @brief Crie um programa que contenha um vetor de inteiros de tamanho 5. Utilizando aritmética de ponteiros, leia os dados do teclado e exiba seus valores multiplicado por 2. Em seguida, exiba o endereço de memória das posições que contém valores pares.
 * @version 0.1
 * @date 2022-05-06
 * 
 * @copyright Copyright (c) 2022
 * 
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main() {
    int vetor[5], *ponteiro;

    for (size_t i = 0; i < 5; i++)
    {
        scanf("%i", &vetor[i]);
        ponteiro = &vetor[i];
        printf("%i\n", (*ponteiro * 2));
    }
    int *ponteiro1 = vetor;
    for (size_t i = 0; i < 5; i++)
    {
        if(vetor[i] % 2 == 0) {
            printf("EndereÃ§o do valor par: %p\n", ponteiro1 + i);
        }
    }
    

}