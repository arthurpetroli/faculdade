/*
@file: ex1.c
@author: Arthur Petroli
@date: 17 march 22
@brief: ex1
*/
/*Crie uma enumeração representando os meses do ano.
Agora, escreva um programa que leia um valor inteiro do
teclado e exiba o nome do mês correspondente e a
quantidade de dias que ele possui.
*/

/** determinação das bibliotecas */
#include <stdio.h>
#include <stdlib.h>

typedef enum {janeiro=1, fevereiro, marco, abril, maio, junho, julho, agosto, setembro, outubro, novembro, dezembro} meses;

int main(){
    meses mes;  

    int mesdigitado;        

    printf("Digite um valor inteiro de 1 a 12:\n");
    scanf("%i",&mesdigitado);

    mes = mesdigitado;

    if(mes==janeiro){
        printf("Esse mes e janeiro que tem 31 dias\n");
    }

    if(mes==fevereiro){
        printf("Esse mes e fevereiro que tem 28 dias\n");
    }

    if(mes==marco){
        printf("Esse mes e marco que tem 31 dias\n");
    }

    if(mes==abril){
        printf("Esse mes e abril que tem 30 dias\n");
    }

    if(mes==maio){
        printf("Esse mes e maio que tem 31 dias\n");
    }

    if(mes==junho){
        printf("Esse mes e junho que tem 30 dias\n");
    }

    if(mes==julho){
        printf("Esse mes e julho que tem 31 dias\n");
    }

    if(mes==agosto){
        printf("Esse mes e agosto que tem 31 dias\n");
    }

    if(mes==setembro){
        printf("Esse mes e setembro que tem 30 dias\n");
    }

    if(mes==outubro){
        printf("Esse mes e outubro que tem 31 dias\n");
    }

    if(mes==novembro){
        printf("Esse mes e novembro que tem 30 dias\n");
    }

    if(mes==dezembro){
        printf("Esse mes e dezembro que tem 31 dias\n");
    }

    return 0;
}