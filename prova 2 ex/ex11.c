/*
@file: ex1.c
@author: Arthur Petroli
@date: 10 Nov 21
@brief: Exercício 1 da aula 10

Faça um programa que receba uma palavra e em seguida gere e exiba uma outra string contendo a palavra concatenada da mesma palavra invertida, porém em maiúscula.
Dica: usar a função toupper() da biblioteca ctype.h para transformar uma letra na sua letra maiúscula.

Exemplo:
Digite uma palavra: Brasil
BrasilLISARB


*/


#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int main(){
    
    char palavra[20];
    int x,cont=0;

   
    printf("Digite o carro armazenado: ");
    fgets(palavra,20,stdin);
    palavra[strcspn(palavra,"\n")]='\0';
    setbuf(stdin,NULL);
    

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