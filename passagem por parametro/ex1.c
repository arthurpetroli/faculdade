/*
@file: ex1.c
@author: Arthur Petroli
@date: 20 march 22
@brief: ex1
*/
/* Escreva um programa que receba um número inteiro
representando a quantidade total de segundos e, usando
passagem de parâmetros por referência, converta a
quantidade informada de segundos em Horas, Minutos e
Segundos. Imprima o resultado da conversão no formato
HH:MM:SS. Utilize o seguinte protótipo da função:
*/

/** determinação das bibliotecas */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/** funçao transforma total de segundos em horas com minutos e horas */
void converteHora(int total_segundos, int* hora, int* min, int* seg){

    while (total_segundos > 3600)
    {
        (*hora)++;
        total_segundos -= 3600;
    }

    while (total_segundos > 60)
    {
        (*min)++;
        total_segundos -= 60;
    }

   
    *seg = total_segundos;

    return;

}

int main(){
    int total_segundos;
    int hora=0,min=0,seg=0;

/** cliente digita o total de segundos */
    printf("Digite um numero inteiro de segundos:\n");
    scanf("%i",&total_segundos);

/** chama funçao */
    converteHora(total_segundos,&hora,&min,&seg);

    printf("Convertendo para horas,minutos e segundos ficara: %iH:%iM:%iS\n",hora,min,seg);

    return 0;

}