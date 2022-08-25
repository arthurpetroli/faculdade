/**
 * @file ex1.c
 * @author Arthur Petroli
 * @brief Escreva um programa que contenha duas variáveis inteiras. Compare os
 * endereços e exiba o endereço e o conteúdo do maior endereço.
 * @version 0.1
 * @date 2022-05-06
 *
 * @copyright Copyright (c) 2022
 *
 */

#include <stdio.h>
#include <stdlib.h>

int main()
{
    int numeroUm = 0;
    int numeroDois = 0;
    int *pontoNumeroUm = &numeroUm;
    int *pontoNumeroDois = &numeroDois;

    printf("Digite dois numeros: \n");
    scanf("%d", &numeroUm);
    setbuf(stdin, NULL);
    scanf("%d", &numeroDois);

    if (pontoNumeroUm < pontoNumeroDois)
    {
        printf("Numero um: %i - Endereco: %p\n", *pontoNumeroDois, pontoNumeroDois);
    } else
    {
        printf("Numero dois: %i - %p\n", *pontoNumeroUm, pontoNumeroUm);
    }


    return 0;
}