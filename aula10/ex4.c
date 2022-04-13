/*
@file: ex4.c
@author: Arthur Petroli
@date: 10 Nov 21
@brief: Exercício 4 da aula 10

Crie um algoritmo que exiba todos os números pares entre 240 e 730 inclusive.
*/


#include <stdlib.h>
#include <stdio.h>

int main(){
    
    int x;
    
    for (x = 240 ; x <= 730 ; x++){
        if(x % 2 == 0){
          printf("%d\n", x);  
        }
        
    }

  return 0;

}