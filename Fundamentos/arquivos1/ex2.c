/**
 * @file ex2.c
 * @author Arthur Henrique de Oliveira Petroli (arthurpetroli@gmail.com)
 * @brief Escreva um programa que leia do usuário os nomes de dois
  arquivos texto. Crie um terceiro arquivo texto com o conteúdo dos
  dois primeiros juntos (o conteúdo do primeiro seguido do conteúdo do
  segundo).
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

    //definiçao de variaveis
    FILE *prog;
    char texto1[100],texto2[100],texto3[200];
    int resultado;

    //pede para o usuario o nome do arquivo que quer acessar
    printf("Insira o nome do primeiro arquivo: ");
    fgets(texto1,21,stdin);
    texto1[strcspn(texto1,"\n")] = '\0';
    setbuf(stdin, NULL);

    //abrindo o arquivo para leitura
    prog = fopen(texto1,"r");
    if(prog == NULL){
        printf("Erro na abertura do arquivo");
        exit(1); //finaliza o programa
    }

    //pega a linha 1 do arquivo 1 e copia no arquivo 3
    strcpy(texto3,fgets(texto1,100,prog));
    //pega a linha 2 do arquivo 1 e copia no arquivo 3
    strcat(texto3,fgets(texto1,100,prog));

    //adiciona linha no arquivo 3
    strcat(texto3,"\n");

    //pede para o usuario o nome do arquivo que quer acessar
    printf("Insira o nome do segundo arquivo: ");
    fgets(texto2,21,stdin);
    texto2[strcspn(texto2,"\n")] = '\0';
    setbuf(stdin, NULL);

    //abrindo o arquivo para leitura
    prog = fopen(texto2,"r");
    if(prog == NULL){
        printf("Erro na abertura do arquivo");
        exit(1); //finaliza o programa
    }

    //pega a linha 1 do arquivo 1 e copia no arquivo 3
    strcat(texto3,fgets(texto2,100,prog));
    //pega a linha 2 do arquivo 1 e copia no arquivo 3
    strcat(texto3,fgets(texto2,100,prog));

    //abrindo o arquivo para escrita
    prog = fopen("cleber.txt","w");
    if(prog == NULL){
        printf("Erro na abertura do arquivo\n");
        exit(1); 
    }

    //coloca o conteudo de texto 3 no arquivo
    fputs(texto3, prog);

    if (resultado == EOF) {
        printf("Erro na gravação\n");
    }

    //fecha o arquivo
    fclose(prog);
    
}