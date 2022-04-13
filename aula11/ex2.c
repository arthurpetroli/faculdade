/*
@file: ex2.c
@author: Arthur Petroli
@date: 04 Nov 21
@brief: Exercício 2 da aula 9

Crie um algoritmo que receba 10 números e os armazene em um vetor A. 
Em seguida, gere o vetor B onde cada elemento é o quadrado do valor da mesma posição no vetor A
*/

// bibliotecas
#include <stdlib.h>
#include <stdio.h>

int main(){
    
    int numeroA[10];
    int numeroB[10];

    for (int x = 0 ; x < 10 ; x++){

        printf("Digite o primeiro numero: ");
        scanf("%i", &numeroA[x]);

        numeroB[x] = numeroA[x] * numeroA[x];

        printf("Os valores do vetorA sao: %i ,Os valores do vetorB sao: %i\n", numeroA[x] , numeroB[x]);

    }
  return 0;
}