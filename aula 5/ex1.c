/*
@file: ex.1
@author: Arthur Petroli
@date: 07 Out 21
@brief: Exercício 1 da aula 5
*/

#include <stdio.h>
#include <stdlib.h>

int main(){
  float altura,pesoIdeal;
  altura=pesoIdeal=0;

    //peso real
   printf("Qual a sua altura:\n");
   scanf("%f",&altura);

   pesoIdeal =  (72.7 * altura) - 58;

    //peso ideal
   printf("Seu peso ideal e:%.3f\n",pesoIdeal);


  return 0;
}