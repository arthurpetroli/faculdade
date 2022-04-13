/*
@file: ex6.c
@author: Arthur Petroli
@date: 10 Nov 21
@brief: Exercício 6 da aula 10

Faça um programa que receba 10 números e calcule o quadrado desse número (um de cada vez)
*/


#include <stdlib.h>
#include <stdio.h>

int main(){
    
    int x,calculo;
    
    for (x = 0 ; x < 10 ; x++){
        printf("Digite um numero:");
        scanf("%i",&x);  

        calculo = x * x;

        printf("\nQuadrado calculado: %d", calculo);
    }

  return 0;

}