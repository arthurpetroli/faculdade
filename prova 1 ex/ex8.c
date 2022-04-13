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
    int a,b,c;

    printf("Qual primeiro lado?:");
    scanf("%i",&a);
    printf("Qual segundo lado?:");
    scanf("%i",&b);
    printf("Qual terceiro lado?:");
    scanf("%i",&c);

    if(a + b > c && a + c > b && b + c > a){
        printf("Os 3 lados formam um triangulo!\n");
        if(a == b && a == c){
            printf("Equilatero\n");
        }
        if(a > b && a > c || b > a && b > c || c > b && c > a){
            printf("Retangulo\n");
        }
        else{
            if(a == b || a == c || b == c)
                printf("Isosceles\n");
            else
                printf("Escaleno\n");
        }
    }
    else{
       printf("Os 3 lados NAO formam um trinagulo!\n");]
    }
    
    return 0;
    
}

