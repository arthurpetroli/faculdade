#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void matrizs(int matriz[tamanho][tamanho],int tamanho,FILE *prog){
    for (size_t i = 0; i < tamanho; i++)
    {
        for (size_t j = 0; j < tamanho; j++)
        {
            printf("Digite os valores da matriz[%i][%i]: ",i+1,j+1);
            scanf("%i",&matriz[i][j]);
        }
    }