/*
@file: ex7.c
@author: Arthur Petroli
@date: 11 Nov 21
@brief: Exercício 7 da aula 13

Escreva um programa que receba uma sigla de um estado da região Sul ou Sudeste e exiba o nome completo do estado correspondente.
*/

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int main(){

   char sigla[2];

   printf("Digite a sigla de um estado:");
   fgets(sigla,2,stdin);
   sigla[strcspn(sigla,"\n")]='\0';
   setbuf(stdin,NULL);

   if(! strcasecmp(sigla,"PR") ==0 ){
       printf("Parana");
    }
   else if( strcasecmp(sigla,"SC") ==0 ){
       printf("Santa Catarina");
    }
   else if( strcasecmp(sigla,"RS") ==0 ){
       printf("Rio Grande do Sul");
    }
   else if( strcasecmp(sigla,"SP") ==0 ){
       printf("Sao Paulo");
    }
   else if( strcasecmp(sigla,"MG") ==0 ){
       printf("Minas Gerais");
    }
   else if( strcasecmp(sigla,"ES") ==0 ){
       printf("Espirito Santo");
    }
   else if( strcasecmp(sigla,"RJ") ==0 ){
       printf("Rio de Janeiro");
    }

   
    return 0;
}