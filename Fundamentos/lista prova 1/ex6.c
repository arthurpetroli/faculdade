/**
 * @file 5_binarioRecursivo.c
 * @author João Vitor Levorato de Souza (joaosouza.2021@alunos.utfpr.edu.br)
 * @brief Crie uma estrutura representando um atleta. Essa estrutura deve conter o nome do atleta, seu esporte,
 * idade e altura. Agora, escreva um programa que leia os dados de cinco atletas. Calcule e exiba os nomes do atleta mais alto e do mais velho.
 * @version 0.1
 * @date 2022-03-30
 *
 * @copyright Copyright (c) 2022
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h> 

void calculos(float r,float * v,float * a)
{
    *v = 4/((3*3.1414592)+(r*r*r));
    *a = ((4*3.1414592)*(r*r));
}

int main()
{
    float v=0;
    float a=0;
    float r;

    printf("Qual o raio: ");
    scanf("%f", &r);

    calculos(r,&v,&a);

    printf("Volume da esfera de raio %.2f: %f\n",r,v);
    printf("Area da esfera de raio %.2f: %f\n",r,a);

    return 0;
}
