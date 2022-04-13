/*
@file: ex3.c
@author: Arthur Petroli
@date: 11 Nov 21
@brief: Exercício 3 da aula 13

Desenvolva um programa que armazene o nome e o telefone de 5 pessoas.
Ao digitar a posição desejada, o programa deve exibir o nome e telefone daquela posição. O programa finaliza ao receber a entrada -1.
*/

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int main(){

    char nomes[5][30];
    int telefones[5],x,y;

    for(x=0; x < 5; x++){
        printf("Digite seu nome:");
        fgets(nomes[x],30,stdin);
        nomes[x][strcspn(nomes[x],"\n")]='\0';
        setbuf(stdin,NULL);

        printf("Digite seu telefone:");
        scanf("%i",&telefones[x]);
        setbuf(stdin,NULL);
    }

    printf("Digite a posicao desejada:");
    scanf("%i",&y);

    if(y == -1){
        return 0;
    }

    printf("Nome->%s    telefone->%d",nomes[y],telefones[y]);


    return 0;
}