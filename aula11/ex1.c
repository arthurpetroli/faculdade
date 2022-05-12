/*
@file: ex1.c
@author: Arthur Petroli
@date: 04 Nov 21
@brief: Exercício 1 da aula 9

Faça um programa que leia e armazene dois vetores de tamanho 5.
Ao final o programa deve calcular e exibir o vetor soma;
*/


#include <stdlib.h>
#include <stdio.h>

int main(){
   
    int numero1[5];
    int numero2[5];
    int soma[5];

    for (int x = 0 ; x < 5 ; x++){

        printf("Digite o primeiro numero: ");
        scanf("%i", &numero1[x]);

        printf("Digite o sengudo numero: ");
        scanf("%i", &numero2[x]);

        soma[x] = numero1[x] + numero2[x];

        printf("a soma dos vetores e: %i\n", soma[x]);

    }

  return 0;
}