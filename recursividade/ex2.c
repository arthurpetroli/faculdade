/*
@file: ex2.c
@author: Arthur Petroli
@date: 02 april 22
@brief: ex2
*/
/*  Crie uma função que retorne x*y através de operação de soma. A função
recebe x e y por parâmetro

*/

/** determinação das bibliotecas */
#include <stdio.h>
#include <stdlib.h>

/** funçao onde calcula multiplicação atravez da soma */
int calcularSoma(int x, int y)
{
    if (y == 1)
    {
        return x;
    } else
    {
        return x + calcularSoma(x, y - 1);
    }
}

int main(){

    int x;
    int y;
    int retorno = 0;

/** informaçao do cliente */
    printf("Digite dois numeros:\n");
    scanf(" %d", &x);
    scanf(" %d", &y);

/** chamando a funçao */
    retorno = calcularSoma(x, y);

    printf("%d x %d = %d\n", x, y, retorno);
    return 0;
    
}