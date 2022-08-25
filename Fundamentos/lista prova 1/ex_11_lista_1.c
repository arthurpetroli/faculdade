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
int Sla(int tamanho,int numero[tamanho])
{
    if (tamanho == 0)
    {
        return 0;
    }
    else if (numero > 0)
    {
        return (numero[tamanho-1])/tamanho + Sla(tamanho-1,numero);
    }

}


int main()
{
    int tamanho;

    printf("Digite o tamanho do vetor: ");
    scanf("%i", &tamanho);

    int numero[tamanho];

/** informaçao do cliente */
for(size_t i=0; i<tamanho ; i++ ){
    printf("Digite o numero de cada vetor: ");
    scanf("%i", &numero[i]);
}
/** chamando a funçao */
    int retorno = Sla(tamanho,numero);

    printf("%i\n",retorno);
    
    return 0;
}