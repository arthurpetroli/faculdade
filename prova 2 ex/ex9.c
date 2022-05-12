/*
@file: ex1.c
@author: Arthur Petroli
@date: 10 Nov 21
@brief: Exercício 1 da aula 10

 Faça um programa que receba e armazene uma matriz de números inteiros de tamanho 4x3, em seguida o programa deverá exibir:
   a) A soma de todos os elementos pares positivos da matriz;
   b) A média de todos os elementos da matriz;
   c) A quantidade de todos os elementos impares da matriz;
   d) A soma dos elementos da segunda linha da matriz;
   e) O maior elemento da terceira coluna da matriz;
*/


#include <stdlib.h>
#include <stdio.h>

int main(){
    
    int matrizA[4][3];
    int somaPares=0,contImpar=0,soma=0,somaSegunda=0,maiorNumero=0;
    int x,y;

    for(x=0 ; x < 4 ; x++){
        for(y=0 ; y < 3 ; y++){
            printf("Digite um numero:");
            scanf("%i",&matrizA[x][y]);
            if(matrizA[x][y] > 0 && matrizA[x][y]%2==0){
                somaPares += matrizA[x][y];
            }
            else if(matrizA[x][y]%2!=0){
                contImpar++;
            }
            soma += matrizA[x][y];
        }
    }

    printf("Soma de todos os elementos pares positivos da matriz: %i\n",somaPares);

    printf("Media de todos elementos da matriz: %.2f\n",soma/12.00);

    printf("Quantidade de elementos impares: %i\n",contImpar);

    
    for(y=0 ; y < 3 ; y++){
        somaSegunda += matrizA[1][y];
    }

    printf("Soma da segunda linha: %i\n",somaSegunda);
    
    for(x=0 ; x < 4 ; x++){
        if(maiorNumero < matrizA[x][2]){
            maiorNumero = matrizA[x][2];
        }
    }

    printf("Maior elemento da terceira coluna: %i\n",maiorNumero);

    return 0;

}