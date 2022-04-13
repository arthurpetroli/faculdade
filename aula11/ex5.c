/*
@file: ex5.c
@author: Arthur Petroli
@date: 04 Nov 21
@brief: Exercício 5 da aula 9

Dado dois vetores, A (4 elementos) e B (5 elementos), faça um programa que imprima todos os elementos comuns aos dois vetores.
*/

#include <stdlib.h>
#include <stdio.h>

int main(){
    
    int vetorA[4], vetorB[5];
    int x2 = 0;

    for (int x = 0 ; x < 5 ; x++){

        printf("Digite o primeiro numero: ");
        scanf("%i", &vetorA[x]);

        for (int x = 0 ; x < 4 ; x++){

            printf("Digite o sengudo numero: ");
            scanf("%i", &vetorB[x]);

            if(vetorA[x] == vetorB[x]){
                printf("O %i e um numero comum entre as duas variaveis\n", vetorA[x]);
                x2++;
            }
        }
    }

    printf("O numeros de valores comuns entre as duas variaveis sao: %i\n", x2);

    return 0;

}
