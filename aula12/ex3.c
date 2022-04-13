/*
@file: ex3.c
@author: Arthur Petroli
@date: 11 Nov 21
@brief: Exercício 3 da aula 12

Construa um programa que leia uma matriz de tamanho 5 x 5 e escreva a localização (linha, coluna) do maior valor encontrado na matriz.
*/


#include <stdlib.h>
#include <stdio.h>

int main(){

    int matriz[5][5];
    int x,y,xMaior,yMaior,matrizMaior=0;

    for(x=0; x < 5; x++){
        for(y=0; y < 5; y++){
            printf("Digite um numero:");
            scanf("%i",&matriz[x][y]);
            if(matrizMaior < matriz[x][y]){
               matrizMaior = matriz[x][y];
               xMaior = x;
               yMaior = y;
            }
        }
    }

    printf("O maior valor da matriz e sua localizacao e: %d - [%d][%d]\n",matrizMaior, xMaior, yMaior);

    return 0;
}