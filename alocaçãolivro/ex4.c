/**
 * @file ex4.c
 * @author Arthur Henrique de Oliveira Petroli (arthurpetroli@gmail.com)
 * @brief 5) Faça um programa que leia um valor inteiro N não negativo. Se o valor de N for inválido, o usuário deverá digitar outro até que ele seja válido (ou seja, positivo). Em seguida, leia um vetor V contendo N posições de inteiros, em que cada valor deverá ser maior  ou igual a 2. Esse vetor deverá ser alocado dinamicamente.
 * @version 0.1
 * @date 2022-06-06
 * 
 * @copyright Copyright (c) 2022
 * 
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "colors.h"

int main(){
    int tamanho;
   
    do
    {
        printf("Digite o tamanho do vetor: ");
        scanf("%i",&tamanho);
    }while (tamanho <= 0);
    
    int *vetor = (int*) calloc(tamanho,sizeof(int));

    for (size_t i = 0; i < tamanho; i++)
    {
        do
        {
            printf("\nDigite um valor maior que 2 do vetor para posicao [%i]:",i+1);
            scanf("%i",&vetor[i]);
        } while (vetor[i] <= 2);
    }

    for (size_t i = 0; i <tamanho; i++)
    {
        foreground(RED);
        background(BLACK);
        style(UNDERLINE);
        style(ITALIC);
        printf("\nO valor do vetor para posicao [%i]: %i",i+1,vetor[i]);
        style(RESETALL);
    }
    
    free(vetor);
}   