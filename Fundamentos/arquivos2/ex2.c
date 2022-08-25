/**
 * @file ex2.c
 * @author Arthur Henrique de Oliveira Petroli (arthurpetroli@gmail.com)
 * @brief  Elabore um programa que leia um arquivo binário contendo
    100 números. Mostre na tela a soma desses números.
 * @version 0.1
 * @date 2022-05-23
 * 
 * @copyright Copyright (c) 2022
 * 
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

int main(){

    //definiçao de variaveis
    FILE *prog;
    int texto1[100],total=0;

    //abrindo o arquivo para leitura
    prog = fopen("numeros.bin","rb");

    //le as informaçoes presentes no arquivo
    fread(texto1,sizeof(int),100,prog);

    //soma os 100 numeros presentes no arquivo jogando na variavel total
    for (int i = 0; i < 100; i++) {
        total += texto1[i];
    }

    //mostra a soma de todos numeros
    printf("Soma total dos 100 numeros do arquivo: %i",total);

    //fecha o arquivo
    fclose(prog);
}