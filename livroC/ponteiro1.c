/**
 * @file ponteiro1.c
 * @author Arthur Henrique de Oliveira Petroli (arthurpetroli@gmail.com)
 * @brief Escreva um programa que contenha duas variáveis inteiras. Compare seus endereços e exiba o maior endereço.
 * @version 0.1
 * @date 2022-05-12
 * 
 * @copyright Copyright (c) 2022
 * 
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void comparar(int *ptrx, int *ptry){
    if (ptrx > ptry)
    {
        printf("Maior endereco de memoria %p",ptrx);
    }else
    {
        printf("Maior endereco de memoria %p",ptry);
    }
}

int main(){
    int x,y;
    int *ptrx,*ptry;

    printf("Digite um valor para x:");
    scanf("%i",&x);

    printf("Digite um valor para y:");
    scanf("%i",&y);

    ptrx = &x;
    ptry = &y;

    comparar(ptrx,ptry);
    
    return 0;
}