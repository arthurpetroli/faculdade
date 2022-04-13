/*
@file: ex.1
@author: Arthur Petroli
@date: 08 Out 21
@brief: Exercício 1 da aula 6
*/
//Faça um programa que receba como entrada a nota de um aluno. O programa deve exibir “aprovado” caso a nota seja igual ou superior a 6, ou exibir “reprovado” caso contrário.

#include <stdio.h>
#include <stdlib.h>

int main(){
  float nota;
  nota=0;

    //indicaçao nota
   printf("Qual foi a nota do aluno:\n");
   scanf("%f",&nota);

   //comprovaçao verdade ou falso
   if(nota>6){
       printf("Aprovado");
   }else{
       printf("Reprovado");
   }
    


  return 0;
}