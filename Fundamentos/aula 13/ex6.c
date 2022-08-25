/*
@file: ex6.c
@author: Arthur Petroli
@date: 11 Nov 21
@brief: Exercício 6 da aula 13

Faça um programa que receba um nome e um sobrenome. Ele deve construir uma nova string no formato americano (Sobrenome, Nome)
Exemplo: Silva, José
*/

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int main(){

   char nome[20],sobrenome[40];

   printf("Digite seu nome:");
   fgets(nome,20,stdin);
   nome[strcspn(nome,"\n")]='\0';
   setbuf(stdin,NULL);

   printf("Digite seu sobrenome:");
   fgets(sobrenome,20,stdin);
   sobrenome[strcspn(sobrenome,"\n")]='\0';
   setbuf(stdin,NULL);

   strcat(sobrenome,", ");

   strcat(sobrenome,nome);

   printf("String concatenada -> %s",sobrenome);

    return 0;
}