/**
 * @file ex6.c
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

//criaçao da estrutura rankings
typedef struct
{
    char nome[20];
    int pontuacao; 
}ranking;

int main(){

    //definiçao de variaveis
    FILE * prog;
    ranking rankings[5];

    //abrindo o arquivo para leitura
    prog = fopen("rankings.bin","rb");

    //le as informaçoes presentes no arquivo
    fread(rankings,sizeof(ranking),2,prog);
    
    //mostra as informaoes presentes no arquivo
    for (size_t i = 0; i < 5; i++)
    {
        printf("%s\n",rankings[i].nome);
        printf("%i\n",rankings[i].pontuacao);
    }

    //fecha o arquivo
    fclose(prog);
}
