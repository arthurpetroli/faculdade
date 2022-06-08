/**
 * @file ex1.c
 * @author Arthur Henrique de Oliveira Petroli (arthurpetroli@gmail.com)
 * @brief 2) Crie uma estrutura representando um aluno de uma disciplina. Essa estrutura deve conter o número de matrícula do aluno, seu nome e as notas de três provas. Escreva um programa que mostre o tamanho em byte dessa estrutura.
 * @version 0.1
 * @date 2022-06-06
 * 
 * @copyright Copyright (c) 2022
 * 
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "colors.h"

typedef struct
{
    int matricula;
    char nome[50];
    int provas[3];
}aluno;

int main(){
    foreground(BLUE);
    printf("Tamanho da estrutura: %i",sizeof(aluno));
    style(RESETALL);
}