/*
@file: ex.8
@author: Arthur Petroli
@date: 14 Out 21
@brief: Exercício 8 da aula 8
*/

#include <stdio.h>
#include <stdlib.h>

int main(){
  int opcao;
  opcao=0;

    //Menu do programa
    
    printf("Menu do programa:\n");
    printf("1 Teste1\n");
    printf("2 Teste2\n");
    printf("3 Sair do programa\n");
    printf("Digite sua opcao:\n");
    scanf("%i",&opcao);
  

   while (opcao == 1){
    printf("Teste1\n");

    printf("Menu do programa:\n");
    printf("1 Teste1\n");
    printf("2 Teste2\n");
    printf("3 Sair do programa\n");
    printf("Digite sua opcao:\n");
    scanf("%i",&opcao);
   }

   while (opcao == 2){
    printf("Teste2\n");

    printf("Menu do programa:\n");
    printf("1 Teste1\n");
    printf("2 Teste2\n");
    printf("3 Sair do programa\n");
    printf("Digite sua opcao:\n");
    scanf("%i",&opcao);
   }

   while (opcao == 3){
    return 0;
   }
  
   while (opcao != 1 && opcao != 2 && opcao != 3){
    printf("Erro\n");

    printf("Menu do programa:\n");
    printf("1 Teste1\n");
    printf("2 Teste2\n");
    printf("3 Sair do programa\n");
    printf("Digite sua opcao:\n");
    scanf("%i",&opcao);
   }
  
  return 0;
}