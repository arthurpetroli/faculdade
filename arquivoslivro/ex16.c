/**
 * @file ex16.c
 * @author Arthur Henrique de Oliveira Petroli (arthurpetroli@gmail.com)
 * @brief 16) Faça um programa que leia 100 números. Esse programa deverá, em seguida, armazenar esses números em um arquivo binário.
 * @version 0.1
 * @date 2022-06-09
 * 
 * @copyright Copyright (c) 2022
 * 
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define max 3

int main(){
    int numero[max];
    FILE *prog;

    for (size_t i = 0; i < max; i++)
    {
        printf("Digite um numero no vetor[%i]: ",i+1);
        scanf("%i",&numero[i]);
    }

    prog = fopen("100.bin","wb");

    fwrite(numero,sizeof(int),max,prog);

    fclose(prog);
}