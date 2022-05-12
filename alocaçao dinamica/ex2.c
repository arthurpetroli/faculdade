/**
 * @file ex2.c
 * @author Arthur Petroli
 * @brief  Escreva uma função que receba um valor inteiro positivo N por parâmetro e retorne
o ponteiro para um vetor de tamanho N alocado dinamicamente. Se N for negativo ou
igual a zero, um ponteiro nulo deverá ser retornado.
 * @version 0.1
 * @date 2022-05-08
 * 
 * @copyright Copyright (c) 2022
 * 
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(){
    int N;
    int *vetor;
    
    printf("Digite o tamanho do vetor:");
    scanf("%i",&N);


    if (N > 0){
        int *vetor = (int*) calloc(N, sizeof(int));
    }else{
        int *vetor = 0;
    }
    

    if(vetor == NULL){
        printf("Erro: Memória Insuficiente!\n");
        exit(1);
    }

    printf("O vetor e de tamanho %i", N);

    free(vetor);

    return 0;

}