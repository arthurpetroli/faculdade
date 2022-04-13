/*
@file: ex6.c
@author: Arthur Petroli
@date: 04 Nov 21
@brief: Exercício 6 da aula 9

Faça um programa que receba e armazene 20 números em um vetor.

Em seguida exiba:

–Quantos números são iguais a 30;
–Quantos números são maior que a média;
–Quantos números são iguais à media;
*/

#include <stdlib.h>
#include <stdio.h>

int main(){
    
    int numero[20], media , x2 = 0, soma, x3 = 0;
    
    for(int x = 0 ; x < 20 ; x++){
        printf("digite um numero: ");
        scanf("%i", &numero[x]);

        soma = soma + numero[x];

        if(numero[x] == 30){
            x2++;
        }

      x3++;

    }

    printf("a quantidade de numeros maiores que 30 sao: %i\n", x2);
    media = soma / 20;

    if(x3 > media){
        printf("Ha um total de %i numeros que são maiores que a media que e: %i \n",x3, media);
    }

    if(soma == media){
        printf("numero igual a media: %i", x3);
    }

    return 0;

}