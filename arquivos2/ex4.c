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

//criaçao da estrutura atleta
typedef struct
{
    char nome[20];
    char esporte[20];
    int idade;
    float altura;
}atleta;

int main(){

    //definiçao de variaveis
    FILE * prog;
    atleta atletas[5];
    int maior,maisVelho,auxMaior,auxMaisVelho;

    //abrindo o arquivo para leitura
    prog = fopen("atletas.bin","rb");

    //le as informaçoes presentes no arquivo
    fread(atletas,sizeof(atleta),5,prog);

    //usado pora percorrer todos as informaçoes de atleta e decidir qual o maior e mais velho
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

    //mostra o maior atleta
    printf("O nome do atleta maior e: %s\n",atletas[auxMaior].nome);

    //mostra o atleta mais velho
    printf("O nome do atleta mais velho e: %s\n",atletas[auxMaisVelho].nome);
    
    //fecha o arquivo
    fclose(prog);
}
