/*
@file: ex2.c
@author: Arthur Petroli
@date: 20 march 22
@brief: ex2
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

/** definiçao de estrutura */
typedef struct 
{
    int hora;
    int min;
    int seg;
}Horario;


/** funçao transforma total de segundos em horas com minutos e horas */
void converteHorario(int total_segundos, Horario* hor){

    while (total_segundos > 3600)
    {
        hor -> hora++;
        total_segundos -= 3600;
    }

    while (total_segundos > 60)
    {
        hor -> min++;
        total_segundos -= 60;
    }

   
    hor->seg = total_segundos;

    return;
}

int main(){
    int total_segundos;

    /** cliente digita o total de segundos */
    printf("Digite um numero inteiro de segundos:\n");
    scanf("%i",&total_segundos);

    /** chama estrutura */
    Horario hor1 = {0,0,0};

    /** chama funçao */
    converteHorario(total_segundos,&hor1);

    printf("Convertendo para horas,minutos e segundos ficara: %dH:%dM:%dS\n",hor1.hora,hor1.min,hor1.seg);

    return 0;

}