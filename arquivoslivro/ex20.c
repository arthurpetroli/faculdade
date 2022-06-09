/**
 * @file ex20.c
 * @author your name (you@domain.com)
 * @brief 20) Considerando a estrutura atleta do exercício anterior, escreva um programa que leia um arquivo binário contendo os dados de cinco atletas.
 * Calcule e exiba o nome do atleta mais alto e do mais velho.
 * @version 0.1
 * @date 2022-06-08
 * 
 * @copyright Copyright (c) 2022
 * 
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "atleta.h"
#define MAX_COUNT 2

int main(){
    FILE *prog;
    atleta atletas[MAX_COUNT];
    int maisVelho,maisAlto,auxVelho,auxAlto;
    
    prog = fopen("atletas.dat","rb");

    fread(atletas,sizeof(atleta),2,prog);
    
    for (size_t i = 0; i < MAX_COUNT; i++)
    {
        if (maisVelho < atletas[i].idade)
        {
            maisVelho = atletas[i].idade;
            auxVelho = i;
        }

        if (maisAlto < atletas[i].altura)
        {
            maisAlto = atletas[i].altura;
            auxAlto = i;
        }
    }
    
    printf("O nome do atleta mais velho e: %s\n",atletas[auxVelho].nome);
    printf("O nome do atleta mais alto e: %s\n",atletas[auxAlto].nome);

    fclose(prog);
}