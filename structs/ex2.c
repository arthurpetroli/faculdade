/*
@file: ex2.c
@author: Arthur Petroli
@date: 10 march 22
@brief: ex2
*/
/*Escreva um trecho de código para fazer a criação dos novos tipos de dados conforme solicitado abaixo:• Horário: composto de hora, minutos e segundos.• Data: composto de dia, mês e ano.• Compromisso: local, horário e texto que descreve o compromisso.
*/

/** determinação das bibliotecas */
#include <stdio.h>
#include <stdlib.h>

/** introdução da estrutura horario*/
typedef struct
{
    int hora;
    int minutos;
    int segundos;
}Horario;

/** introdução da estrutura data*/
typedef struct
{
    int dia;
    int mes;
    int ano;
}Data;

/** introdução da estrutura compromisso*/
typedef struct
{
    char local[20];
    struct Horario;
    char descricao[50];
}Compromisso;

    return 0;
 
}