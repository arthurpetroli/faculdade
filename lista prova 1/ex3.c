/**
 * @file 5_binarioRecursivo.c
 * @author João Vitor Levorato de Souza (joaosouza.2021@alunos.utfpr.edu.br)
 * @brief Crie uma estrutura representando um atleta. Essa estrutura deve conter o nome do atleta, seu esporte,
 * idade e altura. Agora, escreva um programa que leia os dados de cinco atletas. Calcule e exiba os nomes do atleta mais alto e do mais velho.
 * @version 0.1
 * @date 2022-03-30
 *
 * @copyright Copyright (c) 2022
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h> 

void triangulo(int n)
{

    for(size_t  i = 0; i < n; i++) {
        for (size_t j = 0; j < i; j++)
        {
            printf("*"); 
        }
       printf("\n");
    }
  
    for(size_t  i = 0; i < n; i++) {
        for (size_t j = n; j > i; j--)
        {
          printf("*");   
        }
        printf("\n");
    } 
}

int main()
{
    int n;

    printf("Digite um valor n:");
    scanf("%i",&n);

    triangulo(n);

    return 0;
}

