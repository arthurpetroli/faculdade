/*
@file: ex1.c
@author: Arthur Petroli
@date: 10 Nov 21
@brief: Exercício 1 da aula 10

 Crie um programa que receba um número positivo Z e imprima todos os números de Z até 1 e no final exiba quais são os números múltiplos de 4,
  quantos números são múltiplos de 3 e a média dos números múltiplos de 5.
*/


#include <stdlib.h>
#include <stdio.h>

int main(){
    
    int z;
    int mult4=0,mult3=0,mult5=0,total=0;


    printf("Digite um numero:");
    scanf("%i",&z);
    
    while(z > 1){
        if(z%5==0){
            total = total + z;
            mult5++;
        }
        if(z%4==0){
            mult4++;
        }
        if(z%3==0){
            mult3++;
        }
        z--;
        printf("%i\n",z);
    }

    printf("Quantidade multiplos de 3:%i\n",mult3);
    printf("Quantidade multiplos de 4:%i\n",mult4);
    printf("Media dos numeros multiplos de 5:%.2f\n",(float)total/mult5);

    return 0;

}