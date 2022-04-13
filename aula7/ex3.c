/*
@file: ex.3
@author: Arthur Petroli
@date: 14 Out 21
@brief: Exercício 3 da aula 7
*/
/*Altere o exercício anterior para receber os 3 valores no mesmo scanf.
Exemplo:
Digite a conta a ser realizada: 5+8
O resultado é: 13
*/

#include <stdio.h>
#include <stdlib.h>

int main(){
  char sinal;
  float soma,subtracao,multiplicacao,divisao,numero1,numero2;
  numero1=numero2=soma=subtracao=multiplicacao=divisao=0;

   //Dados
    printf("Digite a conta a ser realizada:\n");
    scanf("%f %c %f",&numero1,&sinal,&numero2 );

   //casos
   switch (sinal){ 

    case '+' : 

        soma = numero1 + numero2;
 
        printf("A soma e: %.2f\n",soma); 
        

    break;

    case '-' :

        subtracao = numero1 - numero2;
 
        printf("A subtracao e: %.2f\n",subtracao);
    break;

     case '*' :

        multiplicacao = numero1 * numero2;
 
        printf("A multiplicacao e: %.2f\n",multiplicacao);
    break;

     case '/' :

        divisao = numero1 / numero2;
 
        printf("A divisao e: %.2f\n",divisao);
    break;

    default:
        printf("erro\n");
    break;
   }

  return 0;
}