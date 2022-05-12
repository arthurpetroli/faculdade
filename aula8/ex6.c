/*
@file: ex.6
@author: Arthur Petroli
@date: 14 Out 21
@brief: Exercício 6 da aula 8
*/


#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(){
  int numeroDado,quadrado=0;

   //switch
   while(numeroDado > 0){
       printf("Digite um numero:\n");
       scanf("%i",&numeroDado);
        
       quadrado = pow(numeroDado,2);

       printf("O quadrado desse numero e : %i\n",quadrado);

   }
  return 0;
}