/*
@file: ex.1
@author: Arthur Petroli
@date: 08 Out 21
@brief: Exercício 1 da aula 6
*/
/*Faça um programa que receba 3 idades distintas e mostre: a idade da pessoa mais velha; a idade da pessoa mais nova e a média das 3 idades.
O programa deve considerar e informar o caso de 2 ou 3 pessoas terem a mesma idade.
*/

#include <stdio.h>
#include <stdlib.h>

int main(){
    int idade1,idade2,idade3;
    idade1=idade2=idade3=0;

    printf("Qual a idade da primeira pessoa:");
    scanf("%i",&idade1);
    printf("Qual a idade da segunda pessoa:");
    scanf("%i",&idade2);
    printf("Qual a idade da terceira pessoa:");
    scanf("%i",&idade3);

    //mais velho e mais novo

    if(idade1>idade2 && idade1>idade3){
        printf("A primeira pessoa e mais velha!\n");
    }else{
          if(idade2>idade1 && idade2>idade3){
              printf("A segunda pessoa e mais velha!\n");
          }else{
              printf("A terceira pessoa e mais velha!\n");
          }

        }
    
    if(idade1<idade2 && idade1<idade3){
        printf("A primeira pessoa e mais nova!\n");
    }else{
          if(idade2<idade1 && idade2<idade3){
              printf("A segunda pessoa e mais nova!\n");
          }else{
              printf("A terceira pessoa e mais nova!\n");
          }

        }

    //idade iguais

    if(idade1 == idade2 ){
        printf("A primeira e a segunda pessoa tem a mesma idade: %i!\n",idade1);
    }
    if(idade1 == idade3 ){
        printf("A primeira e a terceira pessoa tem a mesma idade: %i!\n",idade1);
    }
    if(idade2 == idade3 ){
        printf("A segunda e a terceira pessoa tem a mesma idade: %i!\n",idade2);
    }
    if(idade1 == idade2 == idade3 ){
        printf("As 3 pessoas tem a mesma idade: %i!\n",idade1);
    }

    
 return 0 ;
}