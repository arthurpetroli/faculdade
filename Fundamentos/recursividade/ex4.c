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
int calcularFibonacci(int numero)
{
    if (numero == 1)
    {
        return 0;
    } else if (numero == 2)
    {
        return 1;
    } else
    {
        printf("%d\n", numero);
        return calcularFibonacci(numero - 1) + calcularFibonacci(numero - 2);
    }
}


int main()
{
    int numero = 0;
    int retorno = 0;

/** informaçao do cliente */
    printf("Digite um numero: ");
    scanf("%d", &numero);

/** chamando a funçao */
    retorno = calcularFibonacci(numero);

    printf("Termo %d da sequencia de Fibonacci: %d\n", numero, retorno);

    return 0;
}