/*
@file: ex1.c
@author: Arthur Petroli
@date: 10 Nov 21
@brief: Exercício 1 da aula 10

 Faça um programa que receba e armazene 10 nomes de carros (tamanho máximo: 20 caracteres). Em seguida, o programa deverá permitir a busca pelos nomes.
  Ao receber um carro, o sistema deverá informar se o carro está ou não na lista e quantas vezes ele está na lista. O programa deverá finalizar se for feita a busca por "Fusca",
   que deve ser informado também se está ou não na lista.
Exemplo da busca:
Digite o carro a ser buscado: Gol
O carro está na lista 1 vez.
Digite o carro a ser buscado: Vectra
O carro não está na lista.
Digite o carro a ser buscado: Fusca
O carro está na lista 2 vezes.
Fim de programa.
*/


#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int main(){
    
    char nomeProduto[2][20],busca[20],fusca[] = "fusca";
    int x,cont=0;

    for(x=0; x < 2; x++){
        printf("Digite o carro armazenado: ");
        fgets(nomeProduto[x],20,stdin);
        nomeProduto[x][strcspn(nomeProduto[x],"\n")]='\0';
        setbuf(stdin,NULL);
    }

    while(strcmp(busca,fusca) != 0){
        printf("Digite o carro a ser buscado: ");
        fgets(busca,20,stdin);
        busca[strcspn(busca,"\n")]='\0';
        setbuf(stdin,NULL);

        for(x=0; x < 10; x++){
            if(strcmp(nomeProduto[x],busca) == 0){
                cont++;
            }
        }
        printf("O carro digitado aparece %i na lista\n",cont);
        cont = 0;
    }

    printf("Fim do programa");

    return 0;

}