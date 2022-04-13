/*
@file: ex4.c
@author: Arthur Petroli
@date: 20 march 22
@brief: ex4
*/
/*  Faça uma função que receba a média final de um aluno
por parâmetro e retorne o seu conceito, conforme a tabela
abaixo:
Nota Conceito
[ 9 - 10]  A
[ 7 – 9 [  B
[ 5 - 7 [  C
[ 0 – 5 [  D
*/

/** determinação das bibliotecas */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/** funçao para calcular media */
float media(int nota1, int nota2){
    return ("%f", (nota1+nota2)/2);
}

int main(){
    int nota1,nota2;
    float resultado;

/** informaçoes dadas pelo cliente */
    printf("Digite a nota1: ");
    scanf("%i",&nota1);
     printf("Digite a nota2: ");
    scanf("%i",&nota2);

/** chamando a funçao */
    resultado = media(nota1,nota2);

/** decisao de qual o conceito do aluno */
    if (resultado >= 9 && resultado <= 10)
    {
        printf("Aluno conceito A");
    }
    else if (resultado >= 7 && resultado < 9)
    {
        printf("Aluno conceito B");
    }
    else if (resultado >= 5 && resultado < 7)
    {
        printf("Aluno conceito C");
    }
    else if (resultado >= 0 && resultado < 5)
    {
        printf("Aluno conceito D");
    }
    
    return 0;
}