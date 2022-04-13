/*
@file: ex1.c
@author: Arthur Petroli
@date: 10 Nov 21
@brief: Exercício 1 da aula 10

6) Faça um programa que leia e armazene as notas (valores reais) de 10 alunos.
O programa somente deverá aceitar notas entre 0 e 10 (inclusive), solicitando uma nova digitação quando uma nota inválida for digitada. Após a leitura o programa deve:

a) Contar e exibir quantos alunos foram reprovados (nota < 6.0);
b) Exibir as notas dos alunos que foram aprovados (nota >= 6.0);
c) Calcular e exibir a média geral de todas as notas;
d) Calcular e exibir a porcentagem de alunos aprovados;
e) Exibir a nota mais alta e a mais baixa.
*/


#include <stdlib.h>
#include <stdio.h>

int main(){
    
    int notas[10],total=0,notaMaior=0,notaMenor=0;
    int x,contReprov=0;
    float media;

    
    for(x=0 ; x < 10 ; x++){
        do{
            printf("Digite a nota do aluno %i:",x);
            scanf("%i",&notas[x]);
        }while(notas[x] < 0 || notas[x] > 0);
    }

    for(x=0 ; x < 10 ; x++){
        if(notas[x] < 6){
            contReprov++;  
        }
    }

    printf("%i\n", contReprov);

    for(x=0 ; x < 10 ; x++){
        if(notas[x] >= 6){
           printf("%i\n",notas[x]);  
        }
    }

    for(x=0 ; x < 10 ; x++){
        total = total + notas[x];
    }
    
    media = (float) total/10.00;

    printf("%.2f\n",media);
    
    printf("%i%%\n", (10-contReprov) * 10);

    for(x=0 ; x < 10 ; x++){
        if(notas[x] > notaMaior){
            notaMaior = notas[x] ;  
        }
        else if(notas[x] < notaMenor){
            notaMenor = notas[x] ;
        }
    }

    printf("%i\n",notaMaior);

    printf("%i\n",notaMenor);
   
    return 0;

}