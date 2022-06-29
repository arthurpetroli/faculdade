/**
 * @file Lanches.c
 * @author Arthur Henrique de Oliveira Petroli (arthurpetroli@gmail.com)  and Matheus Mazali Maeda (matheusmazalimaeda@alunos.utfpr.edu.br)
 * @brief lanches trabalho
 * @version 0.1
 * @date 2022-06-20
 * 
 * @copyright Copyright (c) 2022
 * 
*/

#include <stdlib.h>
#include <stdio.h>
#include "lanches.h"

void atualizarDadosLanches(Lanche *Lanches, int *quantidadeLanchesArquivo)  //Atualiza os dados dos lanches no arquivo
{
    FILE *database = fopen("database/databaseLanches.dat", "w+b");  //Abre o arquivo de lanches
    fwrite(Lanches, sizeof(Lanche), *(quantidadeLanchesArquivo), database);  //Escreve os dados no arquivo
    fclose(database);  //Fecha o arquivo
}  //Fim da função atualizarDadosLanches

int existeLanchesID(Lanche *Lanches, int idBuscar)  //Verifica se existe um lanche com o ID buscado
{
    if (idBuscar == 0)  //Se o ID for 0, retorna 0
    {
        return 0;  //Retorna 0
    }  //Fim do if
    for (size_t i = 0; i < lerQuantidadeLanches(); i++)  //Percorre todos os lanches
    {
        if (Lanches[i].idLanche == idBuscar)  //Se o ID for igual ao ID buscado
        {
            return 1;  //Retorna 1
        }  //Fim do if
    }  //Fim do for
    return 0;  //Retorna 0
}  //Fim da função existeLanchesID

int existeLanchesNome(Lanche *Lanches, char busca[50])  //Verifica se existe um lanche com o nome buscado
{
    for (size_t i = 0; i < lerQuantidadeLanches(); i++) //Percorre todos os lanches
    {
        if (!strcasecmp(Lanches[i].nomeLanche, busca))  //Se o nome for igual ao nome buscado
        {
            return 1;  //Retorna 1
        }  //Fim do if
    }  //Fim do for
    return 0;  //Retorna 0
}  //Fim da função existeLanchesNome

Lanche retornarLanchePorNome(char dadoParaBuscar[100], Lanche *Lanches)  //Retorna o lanche pelo nome
{
    for (size_t i = 0; i < lerQuantidadeLanches(); i++)  //Percorre todos os lanches
    {
        if (!strcasecmp(Lanches[i].nomeLanche, dadoParaBuscar))  //Se o nome for igual ao nome buscado
        {
            return Lanches[i];  //Retorna o lanche
        }  //Fim do if
    }  //Fim do for
}  //Fim da função retornarLanchePorNome

int retornarLanchePorId(int Id, Lanche *Lanches)  //Retorna o ID do lanche pelo ID
{
    for (size_t i = 0; i < lerQuantidadeLanches(); i++)  //Percorre todos os lanches
    {
        if (Lanches[i].idLanche == Id)  //Se o ID for igual ao ID buscado
        {
            return i;  //Retorna o ID
        }  //Fim do if
    }  //Fim do for
}  //Fim da função retornarLanchePorId

int retornarLanchePorNomeR(char busca[50], Lanche *Lanches)  //Retorna o lanche pelo nome
{
    for (size_t i = 0; i < lerQuantidadeLanches(); i++)  //Percorre todos os lanches
    {
        if (!strcasecmp(Lanches[i].nomeLanche, busca))  //Se o nome for igual ao nome buscado
        {
            return i;  //Retorna o lanche
        }  //Fim do if
    }  //Fim do for
}  //Fim da função retornarLanchePorNomeR

int lerQuantidadeLanches()  //Retorna a quantidade de lanches
{
    FILE *database = fopen("database/databaseLanches.dat", "rb");  //Abre o arquivo de lanches
    fseek(database, 0, SEEK_END);  //Move o ponteiro do arquivo para o final
    int quantidadeBytes = ftell(database);  //Retorna a quantidade de bytes do arquivo
    int quantidadeLanches = quantidadeBytes / sizeof(Lanche);  //Calcula a quantidade de lanches
    fclose(database);  //Fecha o arquivo
    if (database == NULL)  //Se o arquivo não existir
    {
        return 0;  //Retorna 0
    }  //Fim do if
    return quantidadeLanches;  //Retorna a quantidade de lanches
}  //Fim da função lerQuantidadeLanches

char *retornarTipoLanche(Lanche Lanche)  //Retorna o tipo do lanche
{
    if (Lanche.tipoLanche == Vegetariano)  //Se o tipo for Vegetariano
    {
        return "Vegetariano";  //Retorna "Vegetariano"
    }  //Fim do if
    else  //Se o tipo for não for Vegetariano
    {
        return "Com carne";  //Retorna "Com carne"
    }  //Fim do else
}  //Fim da função retornarTipoLanche

void lerLanchesDoArquivo(Lanche *Lanches)  //Lê os lanches do arquivo
{
    FILE *database = fopen("database/databaseLanches.dat", "a+b");  //Abre o arquivo de lanches
    fseek(database, SEEK_SET, 0);  //Move o ponteiro do arquivo para o início
    fread(Lanches, sizeof(Lanche), lerQuantidadeLanches(), database);  //Lê os lanches do arquivo
    fclose(database);  //Fecha o arquivo
}  //Fim da função lerLanchesDoArquivo
