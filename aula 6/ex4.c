/*
@file: ex.4
@author: Arthur Petroli
@date: 08 Out 21
@brief: Exercício 4 da aula 6
*/
//Faça um programa que calcule o imposto de renda a ser pago tendo como entrada o salário de um empregado. O imposto deve ser calculado de acordo com os valores exibidos no slide

#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main(){
  setlocale(LC_ALL,"");

  float salario,imposto1,imposto2,imposto3,imposto4;
  salario=imposto1=imposto2=imposto3=imposto4=0;

    //indicaçao variavel
   printf("Digite o sal�rio:\n");
   scanf("%f",&salario);
   

   //imposto a pagar
   if(salario <= 1903.98){
       printf("Nao paga imposto");
   }else{
       if(salario > 1903.99 && salario <= 2826.65){
          imposto1 = (salario * (7.5/100)) - 142.00;
          printf("O imposto de renda a ser pago e : %.2f R$\n",imposto1);
       }else{
           if(salario > 2826.66 && salario <= 3751.05){
              imposto2 = (salario * (15/100)) - 354.80;
              printf("O imposto de renda a ser pago e : %.2f R$\n",imposto2);
            }else{
                if(salario > 3751.06 && salario <= 4664.68){
                  imposto3 = (salario * (22.5/100))- 636.13;
                  printf("O imposto de renda a ser pago e : %.2f R$\n",imposto3);
                }else{
                  imposto4 = (salario * (27.5/100)) - 869.36;
                  printf("O imposto de renda a ser pago e : %.2f R$\n",imposto4);
                }
            }
       }
   }

  return 0;
}