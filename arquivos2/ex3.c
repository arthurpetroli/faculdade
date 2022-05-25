/**
 * @file ex3.c
 * @author Arthur Henrique de Oliveira Petroli (arthurpetroli@gmail.com)
 * @brief Crie uma estrutura representando um atleta. Essa estrutura
    deve conter o nome do atleta, seu esporte, idade e altura. Agora,
    escreva um programa que leia os dados de cinco atletas e os
    armazene em um arquivo binário.
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

    //faz o prenchimentos das variaveis atravez de repetiçao pedindo para o usuario as informaçoes
    for (size_t i = 0; i < 5; i++)
    {
        printf("Digite o nome do atleta:\n");
        fgets(atletas[i].nome,20,stdin);
        atletas[i].nome[strcspn(atletas[i].nome,"\n")]='\0';
        setbuf(stdin,NULL);

        printf("Digite o esporte do atleta:\n");
        fgets(atletas[i].esporte,20,stdin);
        atletas[i].esporte[strcspn(atletas[i].esporte,"\n")]='\0';
        setbuf(stdin,NULL);

        printf("Digite a idade do atleta:\n");
        scanf("%i",&atletas[i].idade);

        printf("Digite a altura do atleta:\n");
        scanf("%f",&atletas[i].altura);
        setbuf(stdin,NULL);
    }

    //abrindo o arquivo para escrita
    prog = fopen("atletas.bin","wb");

    //escreve as informaçoes de atletas no arquivo 
    fwrite(atletas,sizeof(atleta),5,prog);
   
    //fecha o arquivo
    fclose(prog);
}