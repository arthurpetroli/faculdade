/*
@file: ex3.c
@author: Arthur Petroli
@date: 10 Nov 21
@brief: Exercício 3 da aula 10

Crie um algoritmo que exiba todos os números múltiplos de 5 no intervalo de 1 a 500.
*/


#include <stdlib.h>
#include <stdio.h>

int main(){
    
    int x;
    
    for (x = 1 ; x <= 500 ; x++){
        if(x % 5 == 0){
          printf("%d\n", x);  
        }
        
    }

   return 0;

}