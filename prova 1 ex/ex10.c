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
    int num,m,n; 

    do{
        printf("Digite um numero:");
        scanf("%i",&num);
    }while(num < 1 || num > 99);

    if(num > 10){
        m = num%10;
        n = num/10;
    }else{
        m = num;
    }
    
    switch(n){
    
    case 1:
        printf("dez");
        break;

    case 2:
        printf("vinte");
        break;

    case 3:
        printf("trinta");
        break;

    case 4:

        printf("quarenta");
        break;

    case 5:
        printf("cinquenta");
        break;

    case 6:
        printf("sessenta");
        break;

    case 7:
        printf("setenta");
        break;

    case 8:
        printf("oitenta");
        break;

    case 9:
        printf("noventa");
        break;
        
    default:
        break;
    }

    printf(" e ");

    switch(m){
    
    case 1:
        printf("um");
        break;

    case 2:
        printf("dois");
        break;

    case 3:
        printf("tres");
        break;

    case 4:

        printf("quatro");
        break;

    case 5:
        printf("cinco");
        break;

    case 6:
        printf("seis");
        break;

    case 7:
        printf("sete");
        break;

    case 8:
        printf("oito");
        break;

    case 9:
        printf("nove");
        break;
        
    default:
        break;
    }

    

    
    
    return 0;

}