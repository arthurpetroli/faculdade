/**
 * @file ex3.c
 * @author Arthur Henrique de Oliveira Petroli (arthurpetroli@gmail.com)
 * @brief 3) Escreva um programa para converter o conteúdo de um arquivo texto em caracteres maiúsculos. O programa deverá ler do usuário o nome do arquivo a ser convertido e o nome do arquivo a ser salvo.
 * @version 0.1
 * @date 2022-06-07
 * 
 * @copyright Copyright (c) 2022
 * 
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>


int main(){
    char arquivo1[20],arquivo2[20],c,texto[50];
    FILE *prog;
    int i;

    printf("Digite o nome do arquivo que quer acessar: ");
    fgets(arquivo1,21,stdin);
    arquivo1[strcspn(arquivo1,"\n")] = '\0';
    setbuf(stdin, NULL);

    prog = fopen(arquivo1,"r");
    if(prog == NULL){
        printf("Erro na abertura do arquivo");
        exit(1); //finaliza o programa
    }

    while ((c = fgetc(prog)) != EOF)
    {
        texto[i] = toupper(c);
        i++;
    }

    fclose(prog);

//--------------------------------------------------------------------------

    printf("Digite o nome do arquivo que quer escrever: ");
    fgets(arquivo2,21,stdin);
    arquivo2[strcspn(arquivo2,"\n")] = '\0';
    setbuf(stdin, NULL);
    
    prog = fopen(arquivo2,"w");
    if(prog == NULL){
        printf("Erro na abertura do arquivo");
        exit(1); //finaliza o programa
    }

    fputs(texto,prog);

    fclose(prog);
}