/*
@file: ex.2
@author: Arthur Petroli
@date: 07 Out 21
@brief: Exercício 2 da aula 5
*/

#include <stdio.h>
#include <stdlib.h>

int main(){
  int anoNasceu,anoAtual,idade;
  anoNasceu=anoAtual=idade=0;

    //ano nasceu
   printf("Qual ano voce nasceu:\n");
   scanf("%i",&anoNasceu);
    //ano esta
   printf("Qual ano voce esta:\n");
   scanf("%i",&anoAtual);

   idade = anoAtual - anoNasceu;

    //idade
   printf("Sua idade e: %i\n",idade);


  return 0;
}