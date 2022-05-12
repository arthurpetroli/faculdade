/*
@file: ex5.c
@author: Arthur Petroli
@date: 04 april 22
@brief: ex5
*/
/* Um problema típico em ciência da computação consiste em
converter um número da sua forma decimal para binária. Crie um
algoritmo recursivo para resolver esse problema.
 Solução trivial: x=0 quando o número inteiro já foi convertido para
binário
 Passo da recursão: saber como x/2 é convertido. Depois, imprimir um
dígito (0 ou 1) dado o sucesso da divisão.
*/

#include <stdio.h>
#include <stdlib.h>

/** funçao onde converter um número da sua forma decimal para binária */
void converterBinario(int numero)
{
    if (numero == 0)
    {
        printf("%d", numero);
    } else
    {
        converterBinario(numero / 2);
        printf("%d", numero % 2);
    }
}

int main()
{
    int numero;

/** informaçao do cliente */
    printf("Digite um numero: ");
    scanf("%d", &numero);

/** chamando a funçao */
    converterBinario(numero);

    return 0;
}