/*
@file: ex4.c
@author: Arthur Petroli
@date: 04 Nov 21
@brief: Exercício 4 da aula 9

Crie e inicialize um vetor de inteiros de tamanho 8. Faça a soma dos seus elementos, e apresente o resultado.
*/


#include <stdlib.h>
#include <stdio.h>

int main(){
    
    int numero[8];
    int x, soma;

    
    for (x = 0 ; x < 8 ; x++){
        printf("Digite um numero: ");
        scanf("%i", &numero[x]);
        soma = soma + numero[x];

    }

    printf("a soma de todos os numeros digitados e: %i\n",soma);

    return 0;

}