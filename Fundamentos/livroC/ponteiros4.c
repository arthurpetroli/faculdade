/**
 * @file ponteiros4.c
 * @author Arthur Henrique de Oliveira Petroli (arthurpetroli@gmail.com)
 * @brief Crie um programa que contenha uma matriz de float com três linhas e três colunas. Imprima o endereço de cada posição dessa matriz.
 * @version 0.1
 * @date 2022-05-12
 * 
 * @copyright Copyright (c) 2022
 * 
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void endereco(float matriz[3][3] , float *ptr){

    ptr = &matriz;

    for (size_t i = 0; i < 3; i++)
    {
        for (size_t j = 0; j < 3; j++)
        {
            printf("%p\n",ptr + 3*i + j);
        }
        
    }
    
}

int main(){
    float matriz[3][3];
    float *ptr;

    endereco(matriz,ptr);

}