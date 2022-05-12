/*
@file: ex1.c
@author: Arthur Petroli
@date: 10 march 22
@brief: ex1
*/
/*Crie uma estrutura para representar as coordenadas de um ponto no plano (posições X e Y). Em seguida, declare e leia do teclado dois pontos e exiba a distância entre eles.
*/

/** determinação das bibliotecas */
#include <stdio.h>
#include <stdlib.h>

/** introdução da estrutura */
typedef struct
{
    float x;
    float y;
}Pontos;

int main(){

/** chamada da estrutura */
    Pontos pontos_1;

/** valores fornecidos pelo usuario referente as informações da estrutura */
    printf("Digite um valor para o ponto x: \n");
    scanf("%f",&pontos_1.x);
    printf("Digite um valor para o ponto y: \n");
    scanf("%f",&pontos_1.y);

/** resultado fornecido pelo programa (diferença entre os pontos) */
    printf("A distancia entre esses pontos e: %.2f", pontos_1.x - pontos_1.y);

/** fim do codigo */
    return 0;
}