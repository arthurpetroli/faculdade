/**
 * @file ex3.c
 * @author Arthur Henrique de Oliveira Petroli (arthurpetroli@gmail.com)
 * @brief Escreva um programa para converter o conteúdo de um arquivo
    texto em caracteres maiúsculos. O programa deverá ler do usuário o
    nome do arquivo a ser convertido e o nome do arquivo a ser salvo.
 * @version 0.1
 * @date 2022-05-17
 * 
 * @copyright Copyright (c) 2022
 * 
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

int main(){
    FILE *prog;
    char texto1[100],texto2[100],nome2[100],c;
    int resultado;
    int i=0;

    printf("Insira o nome do primeiro arquivo: ");
    fgets(texto1,21,stdin);
    texto1[strcspn(texto1,"\n")] = '\0';
    setbuf(stdin, NULL);

    prog = fopen(texto1,"r");
    if(prog == NULL){
        printf("Erro na abertura do arquivo");
        exit(1); //finaliza o programa
    }

    while ((c = fgetc(prog))  != EOF) {
        texto2[i] = toupper(c);
        i++;
    }

    printf("Insira em qual arquivo que mandar: ");
    fgets(nome2,21,stdin);
    nome2[strcspn(nome2,"\n")] = '\0';
    setbuf(stdin, NULL);

    prog = fopen(nome2,"w");
    if(prog == NULL){
        printf("Erro na abertura do arquivo");
        exit(1); //finaliza o programa
    }
    fputs(texto2, prog);
    if (resultado == EOF) {
        printf("Erro na gravação\n");
    }


    fclose(prog);
    
}