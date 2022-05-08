/**
 * @file ex3.c
 * @author Arthur Petroli
 * @brief Crie um programa que contenha uma matriz (3x3) de float. Imprima o endereço de cada posição dessa matriz.
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
float valor[3][3];
float *ponteiro = valor;

for (size_t i = 0; i < 3; i++)
{
    for (size_t j = 0; j < 3; j++)
    {
        printf("%p\n", ponteiro + 3 * i + j);
    }
    printf("\n");
}

}