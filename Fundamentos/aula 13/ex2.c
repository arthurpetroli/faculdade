/*
@file: ex2.c
@author: Arthur Petroli
@date: 11 Nov 21
@brief: Exercício 2 da aula 13

Faça um programa que armazene o nome e salário de 5 empregados. Em seguida calcule um aumento de 8% nos salários e exiba a nova folha de pagamentos.
*/

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int main(){

    char nomes[5][30];
    int salario[5],salarioNovo[5],x;

    for(x=0; x < 5; x++){
        printf("Digite seu nome: ");
        fgets(nomes[x],30,stdin);
        nomes[x][strcspn(nomes[x],"\n")]='\0';
        setbuf(stdin,NULL);

        printf("Digite seu salario: ");
        scanf("%i",&salario[x]);
    }

    for(x=0; x < 5; x++){
        printf("%s",nomes[x]);

        salarioNovo[x] = salario[x] + salario[x] * (8/100);

        printf("Salario com aumento de 8%%: %d",salarioNovo[x]);
    }

    return 0;
}