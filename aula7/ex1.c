/*
@file: ex.1
@author: Arthur Petroli
@date: 14 Out 21
@brief: Exercício 1 da aula 7
*/
/*Crie um programa que forneça um menu com
duas opções. Caso o usuário digite 1, o programa
solicitará um número e verificará se o valor é par ou
impar. Caso o usuário digite 2, o programa solicitará
uma idade e verificará se pessoa é maior ou menor
de idade.
Veja o exemplo de menu abaixo:
Menu de programa:
1 – Verifica par/impar
2 – Verifica maior/menor de idade
Digite sua opção:
*/

#include <stdio.h>
#include <stdlib.h>

int main(){
  int idade,opcao,numero;
  idade=opcao=numero=0;

    //Menu do programa
   printf("Menu do programa:\n");
   printf("1 Verifica par/impar\n");
   printf("2 Verifica maior/menor de idade\n");
   printf("Digite sua opcao:\n");
   scanf("%i",&opcao);

   //casos
   switch (opcao){ 

    case 1 : 
        printf("Digite um numero:\n");
        scanf("%i",&numero);
        if(numero % 2 == 0){
            printf("O numero e par\n"); 
        }else{
            printf("O numero e impar\n");
        } 
    break;

    case 2 :
        printf("Digite sua idade:\n");
        scanf("%i",&idade);
        if(idade >= 18){
            printf("Voce e maior de idade\n"); 
        }else{
            printf("Voce nao e maior de idade\n");
        }
    break;

    default:
        printf("erro\n");
    break;
   }

  return 0;
}