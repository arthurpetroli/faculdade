/**
 * @file ex12.c
 * @author Arthur Henrique de Oliveira Petroli (arthurpetroli@gmail.com)
 * @brief 12) Escreva uma função que receba um vetor e seu tamanho como parâmetros e salve-a em um arquivo texto de nome “vetor.txt”. Cada valor do vetor deve ser salvo em uma linha do arquivo.
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

    printf("Digite o tamanho do vetor: ");
    scanf("%i",&tamanho);

    int vetor[tamanho];

    for (size_t i = 0; i < tamanho; i++)
    {
        printf("Digite os valores do vetor[%i]: ",i+1);
        scanf("%i",&vetor[i]);
    }

    prog = fopen("vetor.txt","w");

    for (size_t i = 0; i < tamanho; i++)
    {
        fprintf(prog,"%i",vetor[i]);
        fputs("\n",prog);
    }
    
    fclose(prog);
}