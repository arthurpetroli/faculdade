/*
@file: ex.1
@author: Arthur Petroli
@date: 08 Out 21
@brief: Exercício 1 da aula 6
*/
/*1) Sabendo-se que 200 quilowatts de energia custa um quarto do salário mínimo, faça um programa que receba o valor do salário mínimo e a quantidade de quilowatts gasta por uma residência e mostre:
a) O valor em reais de cada quilowatt;
b) O valor em reais a ser pago pelos quilowatts gasto;
c) O novo valor a ser pago por essa residência com um desconto de 12%;
*/

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(){
  int horas,minutos,segundos,horaSegundo,minutoSegundo,falta,total;
   horas=minutos=segundos=horaSegundo=minutoSegundo=falta=total=0;

    //indicaçao variavel
   printf("Digite o numero das horas atuais:\n");
   scanf("%i",&horas);
   printf("Digite o numero dos minutos atuais:\n");
   scanf("%i",&minutos);
   printf("Digite o numero dos segundos atuais:\n");
   scanf("%i",&segundos);


   // Distancia entre pontos

   horaSegundo = horas * 3600;
   minutoSegundo = minutos * 60;
   total = horaSegundo + minutoSegundo + segundos;
   falta = 86400 - total;

   //resposta 
   
    printf("Falta em segundos para terminar o dia %i\n",falta);

  return 0;
}