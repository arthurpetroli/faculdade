/*
@file: ex6.c
@author: Arthur Petroli
@date: 11 Nov 21
@brief: Exercício 6 da aula 12

Faça um programa que multiplique as matrizes A e D abaixo gerando matriz AD.
*/


#include <stdlib.h>
#include <stdio.h>

int main(){

    int matrizA[2][2],matrizD[2][2],matrizAD[2][2];
    int x,y,z,aux;
    matrizA[2][2]=matrizD[2][2]=matrizAD[2][2]=x=y=z=aux=0;

    for(x=0; x < 2; x++){
        for(y=0; y < 2; y++){
            printf("Digite um numero para matrizA:");
            scanf("%i",&matrizA[x][y]);
        }
    }

    for(x=0; x < 2; x++){
        for(y=0; y < 2; y++){
            printf("Digite um numero para matrizD:");
            scanf("%i",&matrizD[x][y]);
        }
    }

    for(x = 0; x < 2; x++) {
		for(y = 0; y < 2; y++) {
			for(z = 0; z < 2; z++) {
				aux +=  matrizA[x][z] * matrizD[z][y];
			}
			matrizAD[x][y] = aux;
			aux = 0;
		}
	}

    for(x = 0; x < 2; x++) {
		for(y = 0; y < 2; y++) {
			printf("%-10d", matrizAD[x][y]);
		}
		printf("\n\n");
	}


    return 0;
}