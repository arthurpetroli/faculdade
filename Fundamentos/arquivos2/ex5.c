/**
 * @file ex5.c
 * @author Arthur Henrique de Oliveira Petroli (arthurpetroli@gmail.com)
 * @brief Crie uma estrutura representando um ranking. Essa
    estrutura deve conter o nome do jogador e sua pontuação.
    Em seguida, escreva um programa que leia os dados de 5
    jogadores e os armazene em um arquivo utilizando a
    técnica de Dados formatados.
 * @version 0.1
 * @date 2022-05-23
 * 
 * @copyright Copyright (c) 2022
 * 
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

//criaçao da estrutura rankings
typedef struct
{
    char nome[20];
    int pontuacao; 
}ranking;

int main(){

    //definiçao de variaveis
    FILE * prog;
    ranking rankings[5];

    //faz o prenchimentos das variaveis atravez de repetiçao pedindo para o usuario as informaçoes
    for (size_t i = 0; i < 5; i++)
    {
        printf("Digite o nome do atleta:\n");
        fgets(rankings[i].nome,20,stdin);
        rankings[i].nome[strcspn(rankings[i].nome,"\n")]='\0';
        setbuf(stdin,NULL);

        printf("Digite a pontuacao:\n");
        scanf("%i",&rankings[i].pontuacao);
        setbuf(stdin,NULL);
    }

    //abrindo o arquivo para escrita
    prog = fopen("rankings.bin","wb");

    //insere as informaçoes de ranking no arquivo
    for (size_t i = 0; i < 5; i++)
    {
        fprintf(prog,"%s\n", rankings[i].nome);
        fprintf(prog,"%i\n\n", rankings[i].pontuacao); 
    }
    
    //fecha o arquivo
    fclose(prog);
}