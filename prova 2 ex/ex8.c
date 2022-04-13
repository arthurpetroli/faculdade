/*
@file: ex1.c
@author: Arthur Petroli
@date: 10 Nov 21
@brief: Exercício 1 da aula 10

Faça um programa que receba o nome e o preço de custo de 3 produtos. Para isso, crie, além da matriz com os nomes (tamanho 20), 
uma matriz 3x3 de preços de produtos onde cada coluna representa: coluna 0 é o preço de custo (digitado pelo usuário), 
coluna 1 será o preço à vista calculado (preço de custo acrescido em 10%), 
coluna 2 é o preço a prazo calculado (preço de custo acrescido em 20%). 
Para tanto, relacione o índice/linha da matriz de preços com o índice/linha de um vetor bidimensional de strings que armazenará o nome dos produtos.
O programa deve exibir, um por um, o nome do produto e a sua tabela com todos os preços (custo, à vista e a prazo).
*/


#include <stdlib.h>
#include <stdio.h>

int main(){
    
    int nomeProduto[3][20];
    float valor[3],valorVista[3],valorPrazo[3];
    int x;

    for(x=0; x < 3; x++){
        printf("Digite o nome do produto: ");
        fgets(nomeProduto[x],20,stdin);
        nomeProduto[x][strcspn(nomeProduto[x],"\n")]='\0';
        setbuf(stdin,NULL);

        printf("Digite o valor do produto: ");
        scanf("%f",&valor[x]);
        setbuf(stdin,NULL);
    }

    for(x=0 ; x < 3 ; x++){
        valorVista[x] = valor[x] + (valor[x] * 0.1);
    }

    for(x=0 ; x < 3 ; x++){
        valorPrazo[x] = valor[x] + (valor[x] * 0.2);
    }
    
    for(x=0 ; x < 3 ; x++){
        printf("%s %.1f %.1f %.1f\n",nomeProduto[x],valor[x],valorVista[x],valorPrazo[x]);
    }
   
    return 0;

}