/*
@file: ex1.c
@author: Arthur Petroli
@date: 10 Nov 21
@brief: Exercício 1 da aula 10

Faça um programa que leia e armazene um vetor (VetorA) de inteiros e tamanho 10. Crie um VetorB, de mesmo tamanho, gerado a partir do Vetor A invertido (de trás para frente).
Em seguida, calcule o VetorC que deverá ser o resultado do VetorA multiplicado pelo escalar 3 e em seguida subtraído do Vetor B.
*/


#include <stdlib.h>
#include <stdio.h>

int main(){
    
    int vetorA[10];
    int vetorB[10];
    int vetorC[10];
    int x,y;

    for(x=0 ; x < 10 ; x++){
        printf("Digite um numero:");
        scanf("%i",&vetorA[x]);
    }

    for(x=10,y=0; x > 10, y < 10 ; x--,y++){
        vetorB[y] = vetorA[x];
    }

    for(x=0 ; x < 10 ; x++){
        vetorC[x] =((vetorA[x] * 3) - vetorB[x]);
    }

    for(x=0 ; x < 10 ; x++){
        printf("Valores do vetorC: %i\n",vetorC[x]);
    }


    return 0;

}