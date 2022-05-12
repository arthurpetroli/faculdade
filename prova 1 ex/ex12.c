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
    int massa,periodo,tempoDia;
    float massaDada,k,x,tempo,resto;
    massa = 1;
    periodo = 9;


    while(massaDada > 0){
        printf("Massa inicial em gramas do xenonio?:");
        scanf("%f",&massaDada);

        k = massaDada / massa;

        x = sqrt(k);

        tempo = (x * periodo) + 9;

        if(tempo < 24){
          printf("O tempo para o xenonio ser menor que 1grama e: %f horas\n",tempo);
        }else{
          tempoDia = (int)tempo / 24;
          resto = tempo - tempoDia * 24;
          printf("O tempo para o xenonio ser menor que 1grama e: %i Dias e %.0f horas\n",tempoDia,resto);
        }
    }
    
    

    return 0;

}
