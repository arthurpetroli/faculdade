/**
 * @file ex4.c
 * @author Arthur Henrique de Oliveira Petroli (arthurpetroli@gmail.com)
 * @brief Crie um programa para calcular e exibir o número de palavras
    contido em um arquivo texto. O usuário deverá informar o nome do
    arquivo.
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
    char texto1[100],c;
    int vezes=0;

    //pede para o usuario o nome do arquivo que quer acessar
    printf("Insira o nome do arquivo: ");
    fgets(texto1,21,stdin);
    texto1[strcspn(texto1,"\n")] = '\0';
    setbuf(stdin, NULL);

    //abrindo o arquivo para leitura
    prog = fopen(texto1,"r");
    if(prog == NULL){
        printf("Erro na abertura do arquivo");
        exit(1); 
    }

    //enquanto nao acabar o programa ele conta quantas palavras tem no arquivo
    while ((c = fgetc(prog)) != EOF)
    {
        //quantos espaços tem no arquivo
        if (c == ' ')
        {
            vezes++;
        }
        //quantos linhas tem no arquivo
        if (c == '\n')
        {
            vezes++;
        }
    }

    //quantidade de palavras que tem no arquivo
    printf("\nPalavras: %i\n",vezes);
    
    //fecha o arquivo
    fclose(prog);
    
}