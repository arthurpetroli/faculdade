/*
@file: ex.3
@author: Arthur Petroli
@date: 07 Out 21
@brief: Exercício 3 da aula 5
*/

#include <stdio.h>
#include <stdlib.h>

int main(){
  float totalVendido,comissao,salarioBruto;
  totalVendido=comissao=0;

    //total vendido
   printf("Valor total vendido pelo funcionario em reais:\n");
   scanf("%f",&totalVendido);

    //comissao
   comissao = totalVendido * 10/100;

   //salario bruto
   salarioBruto = (float)1200 + comissao;

    //saida
   printf("O valor da comissao sera: %.2f\n", comissao);
   printf("O valor do salario bruto sera: %.2f\n", salarioBruto);

  return 0;
}