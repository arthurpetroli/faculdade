/**
 * @file ex11.c
 * @author Arthur Henrique de Oliveira Petroli (arthurpetroli@gmail.com)
 * @brief 11) Escreva uma função que receba uma matriz e seu tamanho como parâmetros e salve-a em um arquivo texto de nome “matriz.txt”’. Cada linha da matriz deve ser salva em uma linha do arquivo.
 * @version 0.1
 * @date 2022-06-08
 * 
 * @copyright Copyright (c) 2022
 * 
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "matriz.c"


int main(){
    FILE *prog;
    int tamanho;

    printf("Digite o tamanho da matriz: ");
    scanf("%i",&tamanho);

    int matriz[tamanho][tamanho];

    matrizs(matriz[tamanho][tamanho],tamanho,prog);
    
    fclose(prog);
}