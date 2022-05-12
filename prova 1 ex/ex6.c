/*
@file: ex.1
@author: Arthur Petroli
@date: 08 Out 21
@brief: Exercício 1 da aula 6
*/
/*Faça um programa que receba 2 números referentes ao numerador e denominador de uma fração e informe se é uma fração própria, imprópria, ou aparente
*/

#include <stdio.h>
#include <stdlib.h>

int main(){
    float prova1,prova2,prova3,total,projetoJogo,trabalhoMenor,exame,notaMinima;
    prova1=prova2=prova3=total=projetoJogo=trabalhoMenor=exame=notaMinima=0;


    //comprovaçao das fracoes
   
    if( prova1 >= 0 && prova1 <= 20){
        printf("Nota da primeira prova de 0 a 20:\n");
        scanf("%f",&prova1);
    }

    if( prova2 >= 0 && prova2 <= 20){
        printf("Nota da segunda prova de 0 a 20:\n");
        scanf("%f",&prova2);
    }

    if( prova3 >= 0 && prova3 <= 20){
        printf("Nota da terceira prova de 0 a 20:\n");
        scanf("%f",&prova3);
    }

        
    

    
    if( trabalhoMenor >= 0 && trabalhoMenor <= 10){
        printf("Nota dos trabalhos menores:\n");
        scanf("%f",&trabalhoMenor);
    }

    if( projetoJogo >= 0 && projetoJogo <= 30){
        printf("Nota do projero de jogo:\n");
        scanf("%f",&projetoJogo);
    }

   total = prova1 + prova2 + prova3 + trabalhoMenor + projetoJogo;

   if( total > 60 ){
       printf("Parabens voce foi aprovado!\n");
   }else{
       printf("Qual foi a nota no exame:\n");
       scanf("%f",&exame);

       notaMinima = 120 - total;

       if( exame > notaMinima ){
          printf("Parabens voce foi aprovado sua nota foi : %.1f!\n",exame);
       }else{
          printf("Infelizmente voce foi reprovado sua nota foi : %.1f!\n",exame); 
       }
   }


    
 return 0;
}