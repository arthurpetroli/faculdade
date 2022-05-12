/*
@file: ex.3
@author: Arthur Petroli
@date: 08 Out 21
@brief: Exercício 3 da aula 6
*/
//Faça um programa que receba os coeficientes A, B e C de uma equação do segundo grau e retorne as raízes da equação (se existirem).

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(){
  float a,b,c,resultado1,resultado2,delta;
  a=b=c=resultado1=resultado2=delta=0;

    //indicaçao variavel
   printf("Digite um valor para a:\n");
   scanf("%f",&a);
   printf("Digite um valor para b:\n");
   scanf("%f",&b);
   printf("Digite um valor para c:\n");
   scanf("%f",&c);

   //baskara
   delta = pow(b,2) - 4 * a * c;

   resultado1 = (- b + sqrt(delta)) / (2 * a);
   resultado2 = (- b - sqrt(delta)) / (2 * a);
   
   //resposta 
   if(delta > 0){
       printf("%.2f\n",resultado1);
       printf("%.2f\n",resultado2);
   }else{
       printf("Nao tem raizes\n");
   }

  return 0;
}