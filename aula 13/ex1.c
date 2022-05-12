/*
@file: ex1.c
@author: Arthur Petroli
@date: 11 Nov 21
@brief: Exercício 1 da aula 13

Crie um programa para armazenar 10 nomes  em um vetor e imprimir uma lista numerada
*/

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int main(){

    char nomes[3][30];
    int x;

    for(x=0; x < 3; x++){
        printf("Digite um nome: ");
        fgets(nomes[x],30,stdin);
        nomes[x][strcspn(nomes[x],"\n")]='\0';
        setbuf(stdin,NULL);
    }

    for(x=0; x < 3; x++){
        printf("Nome %d -> %s\n",x, nomes[x]);
    }

    return 0;
}