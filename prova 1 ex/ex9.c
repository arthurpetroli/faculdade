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
    int ano,mes,dia;

    printf("Qual o dia?:");
    scanf("%i",&dia);
    printf("Qual o mes?:");
    scanf("%i",&mes);
    printf("Qual o ano?:");
    scanf("%i",&ano);


       
    if(dia == 31 && mes == 1 || mes == 3 || mes == 5 || mes == 7 || mes == 8 || mes == 10 || mes == 12 && ano <= 2021){
        printf("Data valida\n");
    }else{
        if(dia == 30 && mes == 4 || mes == 6 || mes == 9 || mes == 11 && ano <= 2021 ){
            printf("Data valida\n");
        }else{
            if(dia == 28 || dia == 29 && mes == 2 && ano <= 2021){
                printf("Data valida\n");
            }else{
                printf("Data invalida\n");
            }
        }
    }
    
    
    

    return 0;

}

