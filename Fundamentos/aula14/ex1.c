/*
@file: ex1.c
@author: Arthur Petroli
@date: 22 Nov 21
@brief: Exercício 1 da aula 14

Faça um algoritmo que implemente uma função que receba 3 números inteiros e retorne o maior valor. Se algum número for negativo retorne -1;
*/

#include <stdlib.h>
#include <stdio.h>

int num1=0,num2=0,num3=0;

void numeros(){

    printf("Digite o primeiro numero: \n");
    scanf("%i", &num1);
    printf("Digite o segundo numero: \n");
    scanf("%i", &num2);
    printf("Digite o terceiro numero: \n");
    scanf("%i", &num3);

    return;
}


int main(){

    printf("Comeco funcao! \n");

    numeros();

    if(num1 < 0 || num2 < 0 || num3 < 0){
        printf("-1\n");
    }

    else if(num1 >= num2 && num1 >= num3){
        printf("O maior valor e: %d\n",num1);
    }
    else if(num2 >= num1 && num2 >= num3){
        printf("O maior valor e: %d\n",num2);
    }
    else if(num3 >= num1 && num3 >= num2){
        printf("O maior valor e: %d\n",num3);
    }

    printf("Final funcao! ");
   
    return 0;
}