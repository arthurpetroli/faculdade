/*
@file: ex1.c
@author: Arthur Petroli
@date: 10 Nov 21
@brief: Exercício 1 da aula 10

Faça um algoritmo que exiba todos números de 1 a 100.
*/


#include <stdlib.h>
#include <stdio.h>

int main(){
    
    int x;
    
    for (x = 1 ; x <= 100 ; x++){
        printf("%d\n",x);
    }

    return 0;

}