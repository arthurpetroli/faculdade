/**
 * @file 5_binarioRecursivo.c
 * @author João Vitor Levorato de Souza (joaosouza.2021@alunos.utfpr.edu.br)
 * @brief Crie uma estrutura representando um atleta. Essa estrutura deve conter o nome do atleta, seu esporte,
 * idade e altura. Agora, escreva um programa que leia os dados de cinco atletas. Calcule e exiba os nomes do atleta mais alto e do mais velho.
 * @version 0.1
 * @date 2022-03-30
 *
 * @copyright Copyright (c) 2022
 *
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h> 

typedef struct{
    char nome[20];
    char esporte[20];
    int idade;
    float altura;
}atleta;

void informacao(atleta atletas[5],int velho,int alto,int maisVelho,float maisAlto)
{
    for(size_t  i = 0; i < 5; i++) {
      printf("Insira o nome do atleta %i: ", i + 1);
      fgets(atletas[i].nome,21,stdin);
      atletas[i].nome[strcspn(atletas[i].nome,"\n")] = '\0';
      setbuf(stdin, NULL);

      printf("Insira o nome do esporte que pratica %i: ", i + 1);
      fgets(atletas[i].esporte,21,stdin);
      atletas[i].esporte[strcspn(atletas[i].esporte,"\n")] = '\0';
      setbuf(stdin, NULL);

      printf("Qual idade do atleta %s: ",atletas[i].nome);
      scanf("%i", &atletas[i].idade);

      printf("Qual altura do atleta %s: ",atletas[i].nome);
      scanf("%f", &atletas[i].altura);

      setbuf(stdin, NULL);
    }

    for(size_t  i = 0; i < 5; i++) {
      if(maisVelho < atletas[i].idade){
          maisVelho = atletas[i].idade;
          velho = i;
      }
    }

    for(size_t  i = 0; i < 5; i++) {
      if(maisAlto < atletas[i].altura){
          maisAlto = atletas[i].altura;
          alto = i;
      }
    }

    printf("Nome do atleta mais velho: %s\n",atletas[velho].nome);
    printf("Nome do maior atleta: %s\n",atletas[alto].nome);

}

int main()
{
    int velho=0;
    int maisVelho=0;
    float maisAlto=0;
    int alto=0;

    atleta atletas[5];
    informacao(atletas,velho,alto,maisVelho,maisAlto);

    return 0;
}