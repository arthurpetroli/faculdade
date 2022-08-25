/*
@file: ex5.c
@author: Arthur Petroli
@date: 20 march 22
@brief: ex5
*/
/* Crie uma função que que receba o valor de um inteiro
positivo N, calcule e retorne o fatorial desse número.
*/

/** determinação das bibliotecas */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/** funçao onde calcula o fatorial */
int fatorial(int numero, int fat){
    for (fat = 1; numero > 1; numero--)
    {
        fat = fat * numero ;
    }

    return fat;
    
}

int main(){

    int numero;
    int fat;
    float resultado;

/** informaçao do cliente */
    printf("Digite um numero inteiro para ser feito seu fatorial: ");
    scanf("%i",&numero);

/** chamando a funçao */
    resultado = fatorial(numero,fat);

    printf("Resultado desse fatorial e %.2f",resultado);

    return 0;
}