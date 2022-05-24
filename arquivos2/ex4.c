/**
 * @file ex4.c
 * @author Arthur Henrique de Oliveira Petroli (arthurpetroli@gmail.com)
 * @brief Considerando a estrutura atleta do exercício anterior, escreva
    um programa que leia um arquivo binário contendo os dados de
    cinco atletas. Calcule e exiba o nome do atleta mais alto e do
    mais velho.
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
    char esporte[20];
    int idade;
    float altura;
}atleta;

int main(){
    FILE * prog;
    atleta atletas[5];
    int maior,maisVelho,auxMaior,auxMaisVelho;

    prog = fopen("atletas.bin","rb");

    fread(atletas,sizeof(atleta),5,prog);

    for (size_t i = 0; i < 5; i++)
    {
        if (maior < atletas[i].altura)
        {
            maior = atletas[i].altura;
            auxMaior = i;
        }

        if (maisVelho < atletas[i].idade)
        {
            maisVelho = atletas[i].altura;
            auxMaisVelho = i;
        } 
    }

    printf("O nome do atleta maior e: %s\n",atletas[auxMaior].nome);
    printf("O nome do atleta mais velho e: %s\n",atletas[auxMaisVelho].nome);
    
    fclose(prog);
}
