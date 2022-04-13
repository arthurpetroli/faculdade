/*
@file: ex.4
@author: Arthur Petroli
@date: 14 Out 21
@brief: Exercício 4 da aula 8
*/


#include <stdio.h>
#include <stdlib.h>

int main(){
  int numero=0;
  numero=240;

   //switch
   while(numero <= 730){
       if(numero % 2 == 0){
         printf("Numero par : %i\n",numero);
       }
       numero++;
   }
  return 0;
}