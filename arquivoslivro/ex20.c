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
    
    prog = fopen("atletas.dat","rb");

    for (size_t i = 0; i < MAX_COUNT; i++)
    {
        fscanf(prog,"%s\n", atletas[i].nome);
        fscanf(prog,"%s\n", atletas[i].esporte);
        fscanf(prog,"%i", &atletas[i].idade);
        fscanf(prog,"%f", &atletas[i].altura);
    
        printf("Nome: %s\n", atletas[i].nome);
        printf("Esporte: %f", atletas[i].esporte);
        printf("Idade: %i", atletas[i].idade);
        printf("Altura: %.2f", atletas[i].altura);

        fclose(prog);
    }
    
}