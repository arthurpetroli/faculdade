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
  float quilowatts_gasto,salario_minimo,preco_cadaquilowatts,preco_quilowatts,total;
  quilowatts_gasto=salario_minimo=preco_cadaquilowatts=preco_quilowatts=total=0;

    //indicaçao variavel
   printf("Digite o valor do salario minimo:\n");
   scanf("%f",&salario_minimo);
   printf("Quantidade de quilowatts gasta:\n");
   scanf("%f",&quilowatts_gasto);

   // O valor em reais quilowatt
    preco_cadaquilowatts = (salario_minimo/4) / 200;
    preco_quilowatts = preco_cadaquilowatts * quilowatts_gasto,
    total = preco_quilowatts * 0.88;
   
   //resposta 
   
    printf("O valor em reais de cada quilowatt e %.2f\n",preco_cadaquilowatts);
    printf("O valor em reais a ser pago pelos quilowatts gasto e %.2f\n",preco_quilowatts);
    printf("O novo valor a ser pago por essa residencia com um desconto de 12 por cento e %.2f\n",total);

  return 0;
}