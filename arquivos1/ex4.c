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
    FILE *prog;
    char texto1[100],c;
    int vezes=0;

    printf("Insira o nome do arquivo: ");
    fgets(texto1,21,stdin);
    texto1[strcspn(texto1,"\n")] = '\0';
    setbuf(stdin, NULL);

    prog = fopen(texto1,"r");
    if(prog == NULL){
        printf("Erro na abertura do arquivo");
        exit(1); 
    }

    while ((c = fgetc(prog)) != EOF)
    {
        if (c == ' ')
        {
            vezes++;
        }
        if (c == '\n')
        {
            vezes++;
        }
    }

    printf("\nPalavras: %i\n",vezes);
    
    fclose(prog);
    
}