/**
 * @file ex14.c
 * @author Arthur Henrique de Oliveira Petroli (arthurpetroli@gmail.com)
 * @brief 14) Crie um programa para calcular e exibir o número de palavras contido em um arquivo texto. O usuário deverá informar o nome do arquivo.
 * @version 0.1
 * @date 2022-06-08
 * 
 * @copyright Copyright (c) 2022
 * 
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "quantidade.c"

int main(){
    int quant=0;
    FILE *prog;
    char arquivo[20];

    printf("Digite o nome do arquivo que deseja: ");
    fgets(arquivo,21,stdin);
    arquivo[strcspn(arquivo,"\n")] = '\0';
    setbuf(stdin, NULL);

    int resultado = palavra(prog,quant,arquivo);

    printf("A quantidade de palavras presente nesse arquivo e: %i\n",resultado+1);
}