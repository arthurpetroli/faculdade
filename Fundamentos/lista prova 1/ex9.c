/*
@file: ex4.c
@author: Arthur Petroli
@date: 02 april 22
@brief: ex4
*/
/* Faça uma função recursiva que retorne o n-ésimo termo da sequência de
Fibonacci, sendo que n é recebido por parâmetro. Utilize essa função para
desenvolver um programa que mostre no main() os n termos dessa
sequência na tela, a partir do valor de n recebido pelo teclado. Sabe-se que
o 1º termo é 0 e o 2º termo é 1.
*/

/** determinação das bibliotecas */
#include <stdio.h>
#include <stdlib.h>

/** funçao onde calcula fibonacci */
float Sla(int numero)
{
    if (numero == 0)
    {
        return 0;
    }
    else if (numero > 0)
    {
        return ((1.00+(numero*numero))/numero) + Sla(numero-1.00); 
    }

}


int main()
{
    int numero = 0;
    float total = 0;
    float retorno = 0;

/** informaçao do cliente */
    printf("Digite um numero: ");
    scanf("%d", &numero);

/** chamando a funçao */
    retorno = Sla(numero);

    printf("%f\n",retorno);
    
    return 0;
}