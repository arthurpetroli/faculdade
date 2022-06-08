/**
 * @file ex7.c
 * @author Arthur Henrique de Oliveira Petroli (arthurpetroli@gmail.com)
 * @brief 7) Faça um programa que permita que o usuário entre com diversos nomes e telefone para cadastro. Crie um arquivo com essas informações, uma por linha. O usuário finaliza a entrada com o valor 0 para o telefone.
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
    int quant;
    char nome[20];
    long int tele;
    FILE *prog;

    printf("Digite a quantidade de dados que deseja colocar: ");
    scanf("%i",&quant);
    setbuf(stdin,NULL);

    prog = fopen("d.txt","w");

    for (size_t i = 0; i < quant; i++)
    {
        setbuf(stdin,NULL);
        printf("Digite o nome: ");
        fgets(nome,21,stdin);
        nome[strcspn(nome,"\n")] = '\0';
        setbuf(stdin, NULL);

        printf("Digite o telefone: ");
        scanf("%li",&tele);

        fputs(nome,prog);
        fprintf(prog," %li",tele);

        fputs("\n",prog);
    }

    fclose(prog);
    
}