/**
 * @file ex1.c
 * @author Arthur Henrique de Oliveira Petroli (arthurpetroli@gmail.com)
 * @brief Faça um programa que gere 100 números aleatórios. Esse
    programa deverá, em seguida,armazenar esses números em um
    arquivo binário.
 * @version 0.1
 * @date 2022-05-23
 * 
 * @copyright Copyright (c) 2022
 * 
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

int main(){
    FILE *prog;
    int texto1[100];

    for (size_t i = 0; i < 100; i++)
    {
        texto1[i] = rand() % 1000;
    }

    prog = fopen("numeros.bin","wb");

    fwrite(texto1,sizeof(int),100,prog);
    
    fclose(prog);
}