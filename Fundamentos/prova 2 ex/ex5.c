/*
@file: ex1.c
@author: Arthur Petroli
@date: 10 Nov 21
@brief: Exercício 1 da aula 10

Faça um programa que receba 10 números inteiros. Em seguida o programa deverá permitir o usuário buscar números dentro do vetor, informando se o mesmo está ou não no vetor.
O usuário poderá realizar quantas buscas quiser e finalizar ao solicitar a busca de um valor negativo.
*/


#include <stdlib.h>
#include <stdio.h>

int main(){
    
    int vetorA[10],procurar=0;
    int x,cont=0;

    for(x=0 ; x < 10 ; x++){
        printf("Digite um numero:");
        scanf("%i",&vetorA[x]);
    }


    while(procurar >= 0){

       printf("Que numero gostaria de procurar?\n");
       scanf("%i",&procurar);

        for(x=0 ; x < 10 ; x++){
            if(vetorA[x] == procurar){
                printf("Este numero esta no vetor\n");
                cont++;  
            }
        }

        if(cont == 0){
            printf("Este numero nao esta no vetor\n");
        }
    }
   
    return 0;

}