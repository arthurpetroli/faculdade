/*
@file: ex.4
@author: Arthur Petroli
@date: 07 Out 21
@brief: Exercício 4 da aula 5
*/

#include <stdio.h>
#include <stdlib.h>

int main(){
  float numero1,numero2,numero3,numero4,mediaAritmetica;
  numero1=numero2=numero3=numero4=mediaAritmetica=0;

    //numeros informados
   printf("Informe o primeiro numero:\n");
   scanf("%f",&numero1);
   printf("Informe o segundo numero:\n");
   scanf("%f",&numero2);
   printf("Informe o terceiro numero:\n");
   scanf("%f",&numero3);
   printf("Informe o quarto numero:\n");
   scanf("%f",&numero4);

    //comissao
   mediaAritmetica = (numero1 + numero2 + numero3 + numero4) / 4;

    //saida
   printf("O valor da media aritmetica e: %.2f\n", mediaAritmetica);
   
  return 0;
}