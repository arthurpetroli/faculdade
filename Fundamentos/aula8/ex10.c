/*
@file: ex.10
@author: Arthur Petroli
@date: 14 Out 21
@brief: Exercício 10 da aula 8
*/
#include <stdio.h>
#include <stdlib.h>

int main() {
    float nota1, nota2, media,alunos;
    while(alunos<5){
     do{
        printf("Digite a primeira nota: ");
        scanf("%f", &nota1);
     }while(nota1 < 0 || nota1 > 10);

     do{
        printf("Digite a segunda nota: ");
        scanf("%f", &nota2);
     }while(nota2 < 0 || nota2 > 10);

     media = (nota1 + nota2) / 2;

     printf("A media da sua nota e %.2f\n", media);
     alunos++;
    }
    return 0;
}
