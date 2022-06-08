/**
 * @file ex1.c
 * @author Arthur Henrique de Oliveira Petroli (arthurpetroli@gmail.com)
 * @brief 1) Escreva um programa que leia do usuário o nome de um arquivo texto. Em seguida, mostre na tela quantas linhas esse arquivo possui.
 * @version 0.1
 * @date 2022-06-07
 * 
 * @copyright Copyright (c) 2022
 * 
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(){
    char arquivo[20],c;
    FILE *prog;
    int vezes=0;

    printf("Digite o nome do arquivo que quer acessar: ");
    fgets(arquivo,21,stdin);
    arquivo[strcspn(arquivo,"\n")] = '\0';
    setbuf(stdin, NULL);

    prog = fopen(arquivo,"r");
    if(prog == NULL){
      printf("Erro na abertura do arquivo");
      exit(1); 
   }

    c = fgetc(prog);

    while (c != EOF)
    {
        if(c == '\n'){
            vezes++;
        }
        c = fgetc(prog);
    }

    printf("\nLinhas: %i\n",vezes);

    fclose(prog);
    
}