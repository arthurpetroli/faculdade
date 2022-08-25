/*
@file: ex1.c
@author: Arthur Petroli
@date: 20 march 22
@brief: ex1
*/
/* Faça um algoritmo que implemente uma função que receba 3 números
inteiros e retorne o maior valor;
*/

/** determinação das bibliotecas */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/** iniocialiçao de variavel */
int num1=0,num2=0,num3=0;

/** funçao numero onde pede 3 numeros para o cliente */
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

    /** if para descidir qual o maior valor */

    if(num1 >= num2 && num1 >= num3){
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