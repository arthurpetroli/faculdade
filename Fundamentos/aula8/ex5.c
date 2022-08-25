/*
@file: ex.5
@author: Arthur Petroli
@date: 14 Out 21
@brief: Exercício 5 da aula 8
*/

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(){
  int numero,numeroDado,quadrado=0;
  numero=1;

   //switc
   while(numero <= 10){
       printf("Digite um numero:\n");
       scanf("%i",&numeroDado);
        
       quadrado = pow(numeroDado,2);

       printf("O quadrado desse numero e : %i\n",quadrado);

       numero++;
   }
  return 0;
}