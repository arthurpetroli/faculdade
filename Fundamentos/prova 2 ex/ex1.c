/*
@file: ex1.c
@author: Arthur Petroli
@date: 10 Nov 21
@brief: Exercício 1 da aula 10

Crie um algoritmo que imprima uma tabela de conversão de polegadas para centímetros. Deseja-se que na tabela conste valores de 1 polegada até 20 polegadas inteiras. (Para isso considere: 1 polegada = 2,54 cm)
Exemplo de saída:
1” equivale a 2,54 cm
2” equivalem a 5,08 cm
3” equivalem a 7,62 cm
*/


#include <stdlib.h>
#include <stdio.h>

int main(){
    
    int x;
    
    for (x = 1 ; x <= 20 ; x++){
        printf("%i polegadas em cm e: %.2f \n",x, (float)x*2.54);
    }

    return 0;

}