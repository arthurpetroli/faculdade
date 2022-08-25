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

void calculos(int valor,int valores[valor],int *somapar,int *somaimpar)
{
    for (size_t i = 0; i < valor; i++)
    {
        printf("Digite o valor %i: ",i+1);
        scanf("%i", &valores[i]); 
    }

    for (size_t i = 0; i < valor; i++)
    {
        if (valores[i] % 2 == 0)
        {
            *somapar += valores[i];
        }
        else
        {
            *somaimpar += valores[i];
        }
        
        
    }
    
    
    
}

int main()
{
    int valor;
    int somapar=0;
    int somaimpar=0;

    printf("Quantos valores inteiros deseja: ");
    scanf("%i", &valor);

    int valores[valor];

    calculos(valor,valores,&somapar,&somaimpar);

    printf("Soma dos valores pares: %i\n", somapar);
    printf("Soma dos valores impares: %i\n", somaimpar);

    return 0;
}
