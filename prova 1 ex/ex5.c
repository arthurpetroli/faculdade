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
    int numerador,denominador;
    numerador=denominador=0;

    printf("Qual o numerador da fracao:");
    scanf("%i",&numerador);
    printf("Qual o denominador da fracao:");
    scanf("%i",&denominador);

    //comprovaçao das fracoes

    if(numerador % denominador == 0){
        printf("Essa fracao e uma fracao aparente\n");
    }
    else if(numerador<denominador){
        printf("Essa fracao e uma fracao propria\n");
    }
    else if(numerador>=denominador){
        printf("Essa fracao e uma fracao impropria\n");
    }
    
 return 0;
}/*
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
    int numerador,denominador;
    numerador=denominador=0;

    printf("Qual o numerador da fracao:");
    scanf("%i",&numerador);
    printf("Qual o denominador da fracao:");
    scanf("%i",&denominador);

    //comprovaçao das fracoes

    if(numerador % denominador == 0){
        printf("Essa fracao e uma fracao aparente\n");
    }
    else if(numerador<denominador){
        printf("Essa fracao e uma fracao propria\n");
    }
    else if(numerador>=denominador){
        printf("Essa fracao e uma fracao impropria\n");
    }
    
 return 0;
}