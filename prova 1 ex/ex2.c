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
  float x1,x2,y1,y2,distancia1,distancia2,xzes,ylons;
  x1=x2=y1=y2=distancia1=distancia2=xzes=ylons=0;

    //indicaçao variavel
   printf("Digite o x da primeira cordenada:\n");
   scanf("%f",&x1);
   printf("Digite o y da primeira cordenada:\n");
   scanf("%f",&y1);
   printf("Digite o x da segunda cordenada:\n");
   scanf("%f",&x2);
   printf("Digite o y da segunda cordenada:\n");
   scanf("%f",&y2);


   // Distancia entre pontos

    xzes = x2 - x1;
    ylons = y2 - y1;
    distancia1 = pow( xzes , 2 ) + pow ( ylons , 2 );
    distancia2 = sqrt(distancia1);
   
   //resposta 
   
    printf("A distancia dos dois pontos e %.2f\n",distancia2);

  return 0;
}