/**
 * @file ex2.c
 * @author Arthur Henrique de Oliveira Petroli (arthurpetroli@gmail.com)
 * @brief 2) Escreva um programa que leia do usuário os nomes de dois arquivos texto. Crie um terceiro arquivo texto com o conteúdo dos dois primeiros juntos (o conteúdo do primeiro seguido do conteúdo do segundo).
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
    char texto3[50],c;
    char arquivo1[20],arquivo2[20];
    FILE *prog;

    printf("Digite o nome do arquivo que quer acessar: ");
    fgets(arquivo1,21,stdin);
    arquivo1[strcspn(arquivo1,"\n")] = '\0';
    setbuf(stdin, NULL);

    prog = fopen(arquivo1,"r");
    if(prog == NULL){
        printf("Erro na abertura do arquivo");
        exit(1); //finaliza o programa
    }

    strcpy(texto3,fgets(arquivo1,100,prog));

    strcat(texto3,fgets(arquivo1,100,prog));

    fclose(prog);

//-----------------------------------------------------------------------

    printf("Digite outro nome do arquivo que quer acessar: ");
    fgets(arquivo2,21,stdin);
    arquivo2[strcspn(arquivo2,"\n")] = '\0';
    setbuf(stdin, NULL);

    prog = fopen(arquivo2,"r");
    if(prog == NULL){
        printf("Erro na abertura do arquivo");
        exit(1); //finaliza o programa
    }
    
    strcat(texto3,fgets(arquivo2,100,prog));
    
    fclose(prog);

//-----------------------------------------------------------------------

    prog = fopen("c.txt","w");
    if(prog == NULL){
        printf("Erro na abertura do arquivo");
        exit(1); //finaliza o programa
    }

    fputs(texto3,prog);

    fclose(prog);

}