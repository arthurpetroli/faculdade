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
    int numero,impar,pares;
    pares=numero=1;
    impar=0;

    while(numero >= 1 && numero <= 1000){
        printf("Digite um numero:\n");
        scanf("%i",&numero);
        
        if(numero >= 1 && numero <= 1000){
            if(numero % 2 == 0){
                pares = pares + numero;
            }
        }

        if(numero >= 1 && numero <= 1000){
            if(numero % 2 == 1){
                impar = 1 * numero;
                impar = impar * numero;
            }
        }
    }

    printf("Soma numeros pares %i\n",pares);
    printf("Produto numeros impares %i",impar);
    
    

    return 0;

}
