/*
@file: ex1.c
@author: Arthur Petroli
@date: 11 Nov 21
@brief: Exercício 1 da aula 12

Crie e exiba uma matriz identidade com dimensões 5 x 5;
*/


#include <stdlib.h>
#include <stdio.h>

int main(){
    
    int matriz[5][5];
    int x, y;

    
    for (x = 0 ; x < 5; x++){
       for (y = 0 ; y < 5; y++){
        printf("Digite um numero: ");
        scanf("%i", &matriz[x][y]);
       }
    }

    for (x = 0 ; x < 5; x++){
       for (y = 0 ; y < 5; y++){
        printf("%d",matriz[x][y]);
        printf("    ");  
       }
       printf("\n");
    }

    return 0;

}