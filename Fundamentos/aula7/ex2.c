/*
@file: ex.2
@author: Arthur Petroli
@date: 14 Out 21
@brief: Exercício 2 da aula 7
*/
/*Crie uma calculadora usando a instrução switch, que pergunte qual das operações básicas quer fazer (+, -, * e /)
,em seguida peça os dois números e mostre o resultado da operação matemática entre eles.
*/

#include <stdio.h>
#include <stdlib.h>

int main(){
  int opcao;
  float soma,subtracao,multiplicacao,divisao,numero1,numero2;
  opcao=numero1=numero2=soma=subtracao=multiplicacao=divisao=0;

    //Menu do programa
   printf("Menu do programa:\n");
   printf("1 Soma\n");
   printf("2 Subtracao\n");
   printf("3 Multiplicacao\n");
   printf("4 Divisao\n");
   printf("Digite sua opcao:\n");
   scanf("%i",&opcao);

   //casos
   switch (opcao){ 

    case 1 : 
        printf("Digite o primeiro numero:\n");
        scanf("%f",&numero1);
        printf("Digite o segundo numero:\n");
        scanf("%f",&numero2);

        soma = numero1 + numero2;
 
        printf("A soma e: %.2f\n",soma); 
        

    break;

    case 2 :
        printf("Digite o primeiro numero:\n");
        scanf("%f",&numero1);
        printf("Digite o segundo numero:\n");
        scanf("%f",&numero2);

        subtracao = numero1 - numero2;
 
        printf("A subtracao e: %.2f\n",subtracao);
    break;

     case 3 :
        printf("Digite o primeiro numero:\n");
        scanf("%f",&numero1);
        printf("Digite o segundo numero:\n");
        scanf("%f",&numero2);

        multiplicacao = numero1 * numero2;
 
        printf("A multiplicacao e: %.2f\n",multiplicacao);
    break;

     case 4 :
        printf("Digite o primeiro numero:\n");
        scanf("%f",&numero1);
        printf("Digite o segundo numero:\n");
        scanf("%f",&numero2);

        divisao = numero1 / numero2;
 
        printf("A divisao e: %.2f\n",divisao);
    break;

    default:
        printf("erro\n");
    break;
   }

  return 0;
}