/*
@file: ex.9
@author: Arthur Petroli
@date: 14 Out 21
@brief: Exercício 9 da aula 8
*/

#include <stdio.h>
#include <conio.h>
#include <stdlib.h>
#include <math.h>

int main(){
  int numeroRand=0,numeroCliente=0,tentativas=0;

  numeroRand = 1 + rand() % 100;

  printf("Tente acertar o numero que eu estou pensando\n");
  

  while (tentativas < 6){
     printf("Qual numero voce acha que e?\n");
     scanf("%i",&numeroCliente);
      if (numeroCliente == numeroRand){
        printf("Parabens voce encontrou o numero!\n\n");
        printf("O numero de tentativas para voce acertar foi de : %i",tentativas);
    }

      if ( numeroCliente > numeroRand){
        printf("Esse valor e maior que o numero!\n\n");
    }

      if ( numeroCliente < numeroRand ){
        printf("Esse valor e menor que o numero!\n\n");
    }

      tentativas++;
  }

  printf("Infelizmente voce nao acertou o numero era : %i",numeroRand);
  

  return 0;
}