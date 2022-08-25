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

void serie(int n,float s)
{
    s = (float)((n*n)+1)/(n+3);

    printf("O valor da serie: %f",s);  
}

int main()
{
    int n=0;
    float s=0;

    printf("Digite um valor n:");
    scanf("%i",&n);

    serie(n,s);

    return 0;
}
