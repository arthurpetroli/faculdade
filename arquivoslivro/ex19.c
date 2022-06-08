/**
 * @file ex19.c
 * @author Arthur Henrique de Oliveira Petroli (arthurpetroli@gmail.com)
 * @brief 19) Crie uma estrutura representando um atleta. Essa estrutura deve conter o nome do atleta, seu esporte, idade e altura.
 * Agora, escreva um programa que leia os dados de cinco atletas e os armazene em um arquivo binário.
 * @version 0.1
 * @date 2022-06-08
 * 
 * @copyright Copyright (c) 2022
 * 
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define MAX_COUNT 2
typedef struct
{
    char nome[20];
    char esporte[20];
    int idade;
    float altura;
}atleta;

int main(){
    FILE *prog;
    atleta atletas[MAX_COUNT];

    for (size_t i = 0; i < MAX_COUNT; i++)
    {
        printf("DIgite o nome do atleta: ");
        fgets(atletas[i].nome,21,stdin);
        atletas[i].nome[strcspn(atletas[i].nome,"\n")] = '\0';
        setbuf(stdin, NULL);

        printf("Digite o nome do esporte: ");
        fgets(atletas[i].esporte,21,stdin);
        atletas[i].esporte[strcspn(atletas[i].esporte,"\n")] = '\0';
        setbuf(stdin, NULL);

        printf("Digite a idade: ");
        scanf("%i",&atletas[i].idade);

        printf("Digite a altura: ");
        scanf("%f",&atletas[i].altura);
        setbuf(stdin, NULL);
    }

    prog = fopen("atletas.dat","wb");

    for (size_t i = 0; i < MAX_COUNT; i++)
    {
        fprintf(prog,"%s  ", atletas[i].nome);
        fprintf(prog,"%s  ", atletas[i].esporte);
        fprintf(prog,"%i  ", atletas[i].idade);
        fprintf(prog,"%.2f  ", atletas[i].altura);
        fputs("\n",prog);
    }
    
    fclose(prog);
}