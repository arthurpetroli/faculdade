/*
@file: ex1.c
@author: Arthur Petroli
@date: 10 Nov 21
@brief: Exercício 1 da aula 10

Faça um programa que solicite o tamanho de um quadrado e mostre a borda de um quadrado utilizando o caracter #.
Exemplo:
Digite o tamanho desejado: 10
*/


#include <stdlib.h>
#include <stdio.h>

int main(){
    
    int tamanho;
    int x,y;

    printf("Digite um tamanho:");
    scanf("%i",&tamanho);
    
    for(x=0 ; x < tamanho ; x++){
        printf("# ");
    }

    printf("\n");

    for(x=0; x < tamanho - 2 ; x++){
        printf("#");
        for(y=0 ; y < tamanho - 2 ; y++){
           printf("  ");
        }
        printf(" #\n");
    }

    for(x=0; x < tamanho ; x++){
        printf("# ");
    }

    return 0;

}