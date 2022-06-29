/**
 * @file ex18.c
 * @author Arthur Henrique de Oliveira Petroli (arthurpetroli@gmail.com)
 * @brief 18) Crie um programa que leia um arquivo binário contendo uma quantidade qualquer de números. O primeiro número lido indica quantos valores existem no arquivo. Mostre na tela o maior e o menor valor lido.
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
    FILE *prog;
    int numero[max];
    int numeroMaior = 0;

    prog = fopen("100.bin","rb");

    fread(numero,sizeof(int),max,prog);
    
    int numeroMenor = numero[0];

    for (size_t i = 0; i < max; i++)
    {
        if (numeroMaior < numero[i])
        {
            numeroMaior = numero[i];
        }
        if (numeroMenor > numero[i])
        {
            numeroMaior = numero[i];
        }
    }

    printf("Maior numero: %i\n",numeroMaior);
    printf("Menor numero: %i\n",numeroMenor);

    fclose(prog);
    
}