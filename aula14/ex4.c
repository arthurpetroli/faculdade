/*
@file: ex4.c
@author: Arthur Petroli
@date: 22 Nov 21
@brief: Exercício 4 da aula 14

Faça uma função que receba a média final de um aluno por parâmetro e retorne o seu conceito, conforme a tabela abaixo:

Nota Conceito
[ 9 - 10]  A
[ 7 – 9 [  B
[ 5 - 7 [  C
[ 0 – 5 [  D
*/

#include <stdlib.h>
#include <stdio.h>

float media(float nota1, float nota2){

    return (nota1+nota2)/2;
}

int main(){

    float nota1,nota2;

    printf("Comeco funcao! \n");

    printf("Digite nota1: \n");
    scanf("%f", &nota1);
    printf("Digite nota2: \n");
    scanf("%f", &nota2);

    float resultado = media(nota1,nota2);

    if(resultado >= 9){
        printf("Nota conceito: A \n");
    }
    else if(resultado >= 7 && resultado < 9){
        printf("Nota conceito: B \n");
    }
    else if(resultado >= 5 && resultado < 7){
        printf("Nota conceito: C \n");
    }
    else if(resultado >= 0 && resultado < 5){
        printf("Nota conceito: D \n");
    }

    printf("Final funcao! \n");
   
    return 0;
}