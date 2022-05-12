/*
@file: ex5.c
@author: Arthur Petroli
@date: 11 Nov 21
@brief: Exercício 5 da aula 13

Faça um programa que receba uma frase e depois exiba quantas vezes cada vogal aparece. Ele deve contar considerando o tamanho da String.
*/

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int main(){

    char frase[100];
    int contvA,contvE,contvI,contvO,contvU,x;
    contvA=contvE=contvI=contvO=contvU=x=0;

    printf("Digite uma frase:");
    fgets(frase,100,stdin);
    nome[strcspn(nome,"\n")]='\0';
    setbuf(stdin,NULL);

    for(x=0; x < strlen(frase); x++){
        if(frase[x]=='a' || frase[x]=='A'){
            contvA++;
        }
        if(frase[x]=='e' || frase[x]=='E'){
            contvE++;
        }
        if(frase[x]=='i' || frase[x]=='I'){
            contvI++;
        }
        if(frase[x]=='o' || frase[x]=='O'){
            contvO++;
        }
        if(frase[x]=='u' || frase[x]=='U'){
            contvU++;
        }
    }

    printf("Vogais a: %d\n",contvA);
    printf("Vogais e: %d\n",contvE);
    printf("Vogais i: %d\n",contvI);
    printf("Vogais o: %d\n",contvO);
    printf("Vogais u: %d\n",contvU);

    return 0;
}