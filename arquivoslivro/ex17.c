/**
 * @file ex17.c
 * @author Arthur Henrique de Oliveira Petroli (arthurpetroli@gmail.com)
 * @brief 17) Elabore um programa que leia um arquivo binário contendo 100 números. Mostre na tela a soma desses números.
 * @version 0.1
 * @date 2022-06-09
 * 
 * @copyright Copyright (c) 2022
 * 
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "somar.c"
#define max 3

int main(){

    FILE *prog;
    int numero[max];
    long int soma;

    prog = fopen("100.bin","rb");

    fread(numero,sizeof(int),max,prog);

    int resultado = somar(numero,soma);

    printf("A soma dos numeros e: %li",resultado);

    fclose(prog);

}