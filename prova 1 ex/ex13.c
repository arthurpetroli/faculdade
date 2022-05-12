/*
@file: ex.1
@author: Arthur Petroli
@date: 08 Out 21
@brief: Exercício 1 da aula 6
*/
/*Faça um programa que receba 2 números referentes ao numerador e denominador de uma fração e informe se é uma fração própria, imprópria, ou aparente
*/

#include <stdio.h>
#include <stdlib.h>

int main(){
    int i=2,numero,resultado,raiz;
    resultado=numero=raiz=0;
    
    printf("Digite um numero?:");
    scanf("%i",&numero);

    raiz = sqrt(numero);

    while(i < raiz){
        if(numero % i == 0){
          resultado++;
        }
        i++;
    }

    if(resultado == 0){
        printf("O numero digitado e um numero primo!!");
    }

    if(resultado != 0){
        printf("O numero digitado nao e um numero primo!!");
    }



    return 0;

}
