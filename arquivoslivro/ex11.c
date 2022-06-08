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

int main(){
    FILE *prog;
    int tamanho;

    printf("Digite o tamanho da matriz: ");
    scanf("%i",&tamanho);

    int matriz[tamanho][tamanho];

    for (size_t i = 0; i < tamanho; i++)
    {
        for (size_t j = 0; j < tamanho; j++)
        {
            printf("Digite os valores da matriz[%i][%i]: ",i+1,j+1);
            scanf("%i",&matriz[i][j]);
        }
    }

    prog = fopen("matriz.txt","w");

    for (size_t i = 0; i < tamanho; i++)
    {
        for (size_t j = 0; j < tamanho; j++)
        {
            fprintf(prog,"%i",matriz[i][j]);
            fputs("  ",prog);
        }
        fputs("\n",prog);
    }
    
    fclose(prog);
}