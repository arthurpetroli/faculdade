/*
@file: ex6.c
@author: Arthur Petroli
@date: 04 april 22
@brief: ex6
*/
/* Considere a funcaox abaixo. O que essa função faz? Escreva
uma função não-recursiva que resolve o mesmo problema
int funcaox(int a){
 if(a <= 0) return 0;
 else return a + funcaox(a-1);
}//funcaox
*/

#include <stdio.h>
#include <stdlib.h>

int funcaoX(int a)
{
    for (int i = a; i > 0; i--)
    {
        //a != i ? a = a + i : a;
        //a é diferente de i ? se for soma se não for não faz nada
        if (a != i)
        {
            a = a + i;
        }
    }
    return a;
}


int main()
{
    int a;
    int retorno;

/** informaçao do cliente */
    printf("Digite um numero: ");
    scanf("%d", &a);

/** chamando a funçao */
    retorno = funcaoX(a);
    printf("%d", retorno);

    return 0;
}