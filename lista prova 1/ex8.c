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
#include <math.h>

void baskara(float a, float b, float c, float delta, float *x1,float *x2)
{
    
    if (a == 0)
    {
       printf("Nao e equacao de segundo grau!!\n");
       printf("-1");
       return 0;
    }

        delta = (b*b) - 4* a * c;

    if (delta < 0)
    {
        printf("Se delta < 0, nao existe real. Numero de raizes: 0.\n");
    }
    
    if (delta == 0)
    {
        printf("Se delta = 0, existe uma raiz real. Numero de raizes: 1.\n");

        *x1 = (-b+(sqrt(delta)))/(2*a);
        *x2 = (-b-(sqrt(delta)))/(2*a);
        
    }

    if (delta > 0)
    {
        printf("Se delta > 0, existem duas raizes reais. Numero de raizes: 2\n");

        *x1 = (-b+(sqrt(delta)))/(2*a);
        *x2 = (-b-(sqrt(delta)))/(2*a);
        
    }
    
}



int main()
{
    float a;
    float b;
    float c;
    float delta;
    float x1;
    float x2;

    printf("Valor de a: \n");
    scanf("%f", &a);
    
    printf("Valor de b: \n");
    scanf("%f", &b);
    
    printf("Valor de c: \n");
    scanf("%f", &c);

    baskara(a,b,c,delta,&x1,&x2);

    if (delta == 0){
        printf("%f//%f", x1, x2);
    }
    
    if (delta > 0){
        printf("%f//%f", x1, x2);
    }

    return 0;
}
