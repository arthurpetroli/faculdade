/*
@file: ex5.c
@author: Arthur Petroli
@date: 10 Nov 21
@brief: Exercício 5 da aula 10

Faça um programa que calcule o fatorial de um número a ser digitado.
*/


#include <stdlib.h>
#include <stdio.h>

int main(){
    
    int fat=0,x=0;
    
    printf("Digite um numero:");
    scanf("%i",&x);
    
    for (fat = 1 ; x != 1 ; x = x - 1){
        fat = fat * x;
    }

   printf("\nFatorial calculado: %d", fat);

  return 0;

}