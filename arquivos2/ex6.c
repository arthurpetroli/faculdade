/**
 * @file ex4.c
 * @author Arthur Henrique de Oliveira Petroli (arthurpetroli@gmail.com)
 * @brief Considerando a estrutura ranking do exercício anterior,
    escreva um programa que leia o arquivo gerado contendo
    os dados dos 5 jogadores.
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

typedef struct
{
    char nome[20];
    int pontuacao; 
}ranking;

int main(){
    FILE * prog;
    ranking rankings[5];

    prog = fopen("rankings.bin","rb");

    fread(rankings,sizeof(ranking),2,prog);
    
    for (size_t i = 0; i < 5; i++)
    {
        printf("%s\n",rankings[i].nome);
        printf("%i\n",rankings[i].pontuacao);
    }

    fclose(prog);
}
