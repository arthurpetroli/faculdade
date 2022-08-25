/**
 * @file ponteiro3.c
 * @author Arthur Henrique de Oliveira Petroli (arthurpetroli@gmail.com)
 * @brief Crie um programa que contenha um array de float com 10 elementos. Imprima o endereço de cada posição desse array.
 * @version 0.1
 * @date 2022-05-12
 * 
 * @copyright Copyright (c) 2022
 * 
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void endereco(float vetor[10],float *ptr){

    ptr = &vetor;

    for (size_t i = 0; i < 10; i++)
    {
        printf("%p\n",ptr+i);
    }
    
}

int main(){
    float vetor[10];
    float *ptr;

    endereco(vetor,ptr);

    return 0;

}