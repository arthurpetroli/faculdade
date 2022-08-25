/*
@file: ex1.c
@author: Arthur Petroli
@date: 02 april 22
@brief: ex1
*/
/* Crie uma função que retorne o fatorial de um número passado por
parâmetro. A ideia do fatorial está abaixo:
*/

/** determinação das bibliotecas */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/** funçao onde calcula o fatorial */
int fatorial(int n){
    
    if(n == 0){
        return 1;
    }else{
        return n * fatorial(n-1);
    }
    
}

int main(){

    int n=0;
    int fat=0;

/** informaçao do cliente */
    printf("Digite um numero inteiro para ser feito seu fatorial: ");
    scanf("%d",&n);

/** chamando a funçao */
    int resultado = fatorial(n);

    printf("Fatorial do numero %d: %d\n", n, resultado);

    return 0;
}