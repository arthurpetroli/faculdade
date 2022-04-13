/*
@file: ex.3
@author: Arthur Petroli
@date: 14 Out 21
@brief: Exercício 3 da aula 8
*/


#include <stdio.h>
#include <stdlib.h>

int main(){
  int numero=0;
  numero=1;

   //switch
   while(numero <= 332){
       if(numero % 3 == 0){
         printf("Multiplo de 3 : %i\n",numero);
       }
       numero++;
   }
  return 0;
}