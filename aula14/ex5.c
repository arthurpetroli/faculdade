/*
@file: ex5.c
@author: Arthur Petroli
@date: 22 Nov 21
@brief: Exercício 5 da aula 14

Crie uma função que que receba o valor de um inteiro positivo N, calcule e retorne o fatorial desse número.
*/

#include <stdlib.h>
#include <stdio.h>

float fatorial(int n,int fat){

    for(fat = 1; n > 1; n = n - 1){
       fat = fat * n;
    }

    return fat;
}

int main(){

    int n;
    int fat;

    printf("Comeco funcao! \n");

    printf("Digite um valor: \n");
    scanf("%i", &n);

    float resultado = fatorial(n,fat);

    printf("O fatorial desse numero e:%.2f \n",resultado);

    printf("Final funcao! \n");
   
    return 0;
}
