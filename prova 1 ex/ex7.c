/*
@file: ex.1
@author: Arthur Petroli
@date: 08 Out 21
@brief: Exercício 1 da aula 6
*/
/*Faça um programa que receba 2 números referentes ao numerador e denominador de uma fração e informe se é uma fração própria, imprópria, ou aparente
*/

#include <stdio.h>
#include <stdlib.h>

int main(){
    int meses;
    float taxa,capital,imposto1,imposto2,imposto3,imposto4;
    meses=taxa=capital=imposto1=imposto2=imposto3=imposto4=0;

    printf("Qual o capital investido?:");
    scanf("%f",&capital);
    printf("Qual a taxa?:");
    scanf("%f",&taxa);
    printf("Qual a quantidade de meses?:");
    scanf("%i",&meses);

    //comprovaçao das fracoes

    if(meses < 6){
        imposto1 = (capital + (capital * taxa/100)) * 0.775;
        printf("montante final %f\n",imposto1);
    }
    else if(meses >= 6 && meses < 12 ){
        imposto2 = (capital + (capital * taxa/100)) * 0.80;
        printf("montante final %f\n",imposto2);
    }
    else if(meses >= 12 && meses < 24 ){
        imposto3 = (capital + (capital * taxa/100)) * 0.825;
        printf("montante final %f\n",imposto3);
    }
    else if(meses >= 24){
        imposto4 = (capital + (capital * taxa/100)) * 0.85;
        printf("montante final %f\n",imposto4);
    }
    
 return 0;
}