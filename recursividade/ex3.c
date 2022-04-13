/*
@file: ex3.c
@author: Arthur Petroli
@date: 02 april 22
@brief: ex3
*/
/* Crie uma função que retorne x elevado a y através de operação de
multiplicação. A função recebe x e y por parâmetro
*/

/** determinação das bibliotecas */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/** funçao onde calcula o fatorial */
int soma(int x, int y, int aux){
    
    if(y == 1){
        return x;
    }else{
        return soma(x * aux, y-1 , aux);
    }
    
}

int main(){

    int x=0;
    int y=0;
    int aux=0;

/** informaçao do cliente */
    printf("Digite um x: ");
    scanf("%d",&x);

    printf("Digite um y: ");
    scanf("%d",&y);

    aux = x;

/** chamando a funçao */
    int resultado = soma(x,y,aux);

    printf("Resultado %d\n", resultado );

    return 0;
}