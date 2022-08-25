/*
@file: ex3.c
@author: Arthur Petroli
@date: 04 Nov 21
@brief: Exercício 3 da aula 9

Leia um vetor A com 10 elementos inteiros correspondentes as idades de um grupo de pessoas. 
Escreva um programa que determine e escreva a quantidade de pessoas que possuem idade superior a 35 anos
*/


#include <stdlib.h>
#include <stdio.h>

int main(){
    
    int vetorA[10];
    int x, x2;
    
    for (x = 0 ; x < 10 ; x++){
        printf("Digite a idade da pessoa: ");
        scanf("%i", &vetorA[x]);

        if (vetorA[x] > 35){

          x2++;
        }
    }
    
    printf("Dentro das 10 idades, %i sao maiores que 35 anos\n",x2);

   return 0;
}