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
int Sla(int numero, float total)
{
    total += Sla((1+(numero*numero))/numero);

    if (numero == 0)
    {
        return total;
    }
    else if (numero > 0)
    {
        return Sla((1+(numero-1*numero-1))/numero-1); 
    }

}


int main()
{
    int numero = 0;
    float total = 0;
/** informaçao do cliente */
    printf("Digite um numero: ");
    scanf("%d", &numero);

/** chamando a funçao */
    int retorno = Sla(numero,total);

    printf("%d\n", retorno);
    
    return 0;
}