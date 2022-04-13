/*
@file: ex4.c
@author: Arthur Petroli
@date: 11 Nov 21
@brief: Exercício 4 da aula 13

Faça um programa que receba um nome, ele deve perguntar novamente caso o nome tenha tamanho inferior a 5 caracteres.
Ao receber um nome com 5 caracteres ou mais o programa exibe o nome e finaliza.
*/

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int main(){

    char nome[30];
    int tamanho,x=0;

    while(x>=0){
        printf("Digite seu nome:");
        fgets(nome,30,stdin);
        nome[strcspn(nome,"\n")]='\0';
        setbuf(stdin,NULL);

        tamanho = strlen(nome);

        if(tamanho >= 5){
            printf("%s",nome);
            return 0;
        }
        else{
            continue;
        }

    }

    return 0;
}