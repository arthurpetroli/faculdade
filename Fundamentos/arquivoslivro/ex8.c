/**
 * @file ex8.c
 * @author Arthur Henrique de Oliveira Petroli (arthurpetroli@gmail.com)
 * @brief 9) Escreva uma função que receba como parâmetro o nome de um arquivo texto e retorne quantas vogais esse arquivo possui.
 * @version 0.1
 * @date 2022-06-08
 * 
 * @copyright Copyright (c) 2022
 * 
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "vogal.c"

int main(){
    FILE *prog;
    char arquivo[20];
    int vogais=0,resultado;

    printf("Digite o nome do arquivo: ");
    fgets(arquivo,21,stdin);
    arquivo[strcspn(arquivo,"\n")] = '\0';
    setbuf(stdin, NULL);

    resultado = vogal(prog,arquivo,vogais);

    printf("A quantidade de vogais pertencentes a esse arquivo e: [%i]\n",resultado);
}