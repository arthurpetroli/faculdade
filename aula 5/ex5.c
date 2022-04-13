/*
@file: ex.5
@author: Arthur Petroli
@date: 07 Out 21
@brief: Exercício 5 da aula 5
*/

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(){
  float numero,numeroRaiz;
  numero,numeroRaiz=0;

    //numero informado
   printf("Informe o numero:\n");
   scanf("%f",&numero);

    //Raiz do numero
   numeroRaiz = sqrt(numero);

    //saida
   printf("A raiz deste numero e: %f\n", numeroRaiz);
   
  return 0;
}