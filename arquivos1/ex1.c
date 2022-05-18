/**
 * @file ex1.c
 * @author Arthur Henrique de Oliveira Petroli (arthurpetroli@gmail.com)
 * @brief Escreva um programa que leia do usuário o nome de um arquivo
 texto. Em seguida, mostre na tela quantas linhas esse arquivo possui.
 * @version 0.1
 * @date 2022-05-17
 * 
 * @copyright Copyright (c) 2022
 * 
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h> 

int main(){
    FILE *prog;
    char texto[100],c;
    int vezes=0;

    printf("Insira o nome do arquivo: ");
    fgets(texto,21,stdin);
    texto[strcspn(texto,"\n")] = '\0';
    setbuf(stdin, NULL);


    prog = fopen(texto,"r");
    if(prog == NULL){
        printf("Erro na abertura do arquivo");
        exit(1); //finaliza o programa
    }

    c = fgetc(prog);

    while (c != EOF) {
        if (c == '\n')
        {
            vezes++;
        }
        c = fgetc(prog);
    }

    printf("\nLinhas: %i\n",vezes + 1);
    
    fclose(prog);
    
}