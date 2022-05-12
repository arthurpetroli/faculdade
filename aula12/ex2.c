/*
@file: ex2.c
@author: Arthur Petroli
@date: 11 Nov 21
@brief: Exercício 2 da aula 12

Faça um algoritmo que leia uma matriz 3 por 3 (3x3) e retorne a soma dos elementos da sua diagonal principal e da sua diagonal secundária;
*/


#include <stdlib.h>
#include <stdio.h>

int main(){

    int matriz[3][3];
    int x,y,somaPrincipal,somaSecundaria;

    for(x=0; x < 3; x++){
        for(y=0; y < 3; y++){
            printf("Digite um numero:");
            scanf("%i", &matriz[x][y]);
        }
    }
    
    somaPrincipal = matriz[0][0] + matriz[1][1] + matriz[2][2];
    somaSecundaria = matriz[0][2] + matriz[1][1] + matriz[2][0];

    printf("O valor da diagonal principal e: %d\n",somaPrincipal);
    printf("O valor da diagonal secundaria e: %d\n",somaSecundaria);

    return 0;
}

