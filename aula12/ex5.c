/*
@file: ex5.c
@author: Arthur Petroli
@date: 11 Nov 21
@brief: Exercício 5 da aula 12

Faça um programa que some as matrizes A e B, gerando a matriz C
*/


#include <stdlib.h>
#include <stdio.h>

int main(){

    int matrizA[3][3],matrizB[3][3],matrizC[3][3];
    int x,y;

    for(x=0; x < 3; x++){
        for(y=0; y < 3; y++){
            printf("Digite um numero para matrizA:");
            scanf("%i",&matrizA[x][y]);
        }
    }

    for(x=0; x < 3; x++){
        for(y=0; y < 3; y++){
            printf("Digite um numero para matrizB:");
            scanf("%i",&matrizB[x][y]);
        }
    }

    for(x=0; x < 3; x++){
        for(y=0; y < 3; y++){
            matrizC[x][y] = matrizA[x][y] + matrizB[x][y];
            printf("%-10d",matrizC[x][y]);
        }
        printf("\n");
    }


    return 0;
}