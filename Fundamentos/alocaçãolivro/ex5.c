/**
 * @file ex5.c
 * @author Arthur Henrique de Oliveira Petroli (arthurpetroli@gmail.com)
 * @brief 6) Escreva um programa que aloque dinamicamente uma matriz de inteiros. As dimensões da matriz deverão ser lidas do usuário. Em seguida, escreva uma função que receba um valor e retorne 1, caso o valor esteja na matriz, ou retorne 0, no caso contrário.
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

int pertence(int** matriz,int L,int C,int numero){
    printf("Digite um numero: ");
    scanf("%i",&numero);

    for (size_t i = 0; i < C; i++)
    {
        for (size_t j = 0; j < L; j++)
        {
            if (matriz[i][j] == numero)
            {
                return 1;
            }

        }  
    }

    return 0;
}

int main(){
    int C;
    int L;
    int numero;

    printf("Digite a quantidade de linhas da matriz: ");
    scanf("%i",&L);

    printf("Digite a quantidade de colunas da matriz: ");
    scanf("%i",&C);

    int **matriz = (int**) calloc(L,sizeof(int*));

    for (size_t i = 0; i < C; i++)
    {
        matriz[i] = (int*) calloc(C,sizeof(int));
    }

    for (size_t i = 0; i < C; i++)
    {
        for (size_t j = 0; j < L; j++)
        {
            printf("\nDigite um valor da matriz para posicao [%i][%i]:",i+1,j+1);
            scanf("%i",&matriz[i][j]);
        }  
    }

    int contem = pertence(matriz,L,C,numero);

    if (contem)
    {
        printf("Contem o numero\n");
    }else
    {
        printf("Nao contem o numero\n");
    }

    for (size_t i = 0; i < L; i++){
        free(matriz[i]);
    }// for
    free(matriz);
}