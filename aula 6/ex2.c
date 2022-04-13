/*
@file: ex.2
@author: Arthur Petroli
@date: 08 Out 21
@brief: Exercício 2 da aula 6
*/
//Faça um programa que receba um número e determine se ele é um número par ou ímpar. (Para isso utilize o operador % que retorna o resto da divisão).

#include <stdio.h>
#include <stdlib.h>

int main(){
  int numero;
  numero=0;

    //indicaçao numero
   printf("Digite um numero:\n");
   scanf("%i",&numero);

   //par ou impar
   if(numero % 2 == 0){
       printf("Par\n");
   }else{
       printf("Impar\n");
   }

    
  return 0;
}