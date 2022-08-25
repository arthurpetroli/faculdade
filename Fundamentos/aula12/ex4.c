/*
@file: ex4.c
@author: Arthur Petroli
@date: 11 Nov 21
@brief: Exercício 4 da aula 12

Faça um programa que multiplique por 5 a matriz A (preenchida a partir do teclado) para gerar a matriz C.
*/


#include <stdlib.h>
#include <stdio.h>

int main(){

    int matrizA[3][3],matrizC[3][3];
    int x,y;

    for(x=0; x < 3; x++){
        for(y=0; y < 3; y++){
            printf("Digite um numero:");
            scanf("%i", &matrizA[x][y]);
        }
    }

    for(x=0; x < 3; x++){
        for(y=0; y < 3; y++){
            matrizC[x][y] = matrizA[x][y] * 3;
            printf("%-10d",matrizC[x][y]);
        }
        printf("\n");
    }


    return 0;
}