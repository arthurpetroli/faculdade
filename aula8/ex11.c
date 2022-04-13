/*
@file: ex.11.c
@author: Arthur Petroli
@date: 14 Out 21
@brief: Exercício 11 da aula 8
*/

#include <stdio.h>
#include <stdlib.h>

int main(){
  int numero,valoresValidos;
  numero=valoresValidos=0;

   //valores
   do{
   printf("Digite numeros entre 500 e 1000\n");
   scanf("%i",&numero);
   valoresValidos++;
  }while(numero <= 1000 && numero >= 500);

  printf("A quantidade de valores validos foi %i\n",valoresValidos - 1);
  return 0;
}