/*
@file: ex1.c
@author: Arthur Petroli
@date: 10 Nov 21
@brief: Exercício 1 da aula 10

Faça um programa que receba duas matrizes de números inteiros A e B, ambas 2x3. Em seguida calcule uma matriz C segundo a fórmula C = (A + B) * 2. Mostre a matriz C resultante.
*/


#include <stdlib.h>
#include <stdio.h>

int main(){
    
    int matrizA[2][3],matrizB[2][3],matrizC[2][3];
    int x,y;

    for(x=0 ; x < 2 ; x++){
        for(y=0 ; y < 3 ; y++){
            printf("Digite um numero:");
            scanf("%i",&matrizA[x][y]);
        }
    }

    for(x=0 ; x < 2 ; x++){
        for(y=0 ; y < 3 ; y++){
            printf("Digite um numero:");
            scanf("%i",&matrizB[x][y]);
        }
    }

    for(x=0 ; x < 2 ; x++){
        for(y=0 ; y < 3 ; y++){
            matrizC[x][y] = ( matrizA[x][y] + matrizB[x][y] ) * 2;
        }
    }

    for(x=0 ; x < 2 ; x++){
        for(y=0 ; y < 3 ; y++){
            printf("%3i",matrizC[x][y]);
        }
        printf("\n");
    }
   
    return 0;

}