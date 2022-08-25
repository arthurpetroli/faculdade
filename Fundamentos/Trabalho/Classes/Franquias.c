/**
 * @file Franquias.c
 * @author Arthur Henrique de Oliveira Petroli (arthurpetroli@gmail.com)  and Matheus Mazali Maeda (matheusmazalimaeda@alunos.utfpr.edu.br)
 * @brief franquias trabalho
 * @version 0.1
 * @date 2022-06-20
 *
 * @copyright Copyright (c) 2022
 *
 */

#include <stdlib.h>
#include <stdio.h>
#include "franquias.h"

void atualizarDados(Franquia *Franquias, int *quantidadeFranquiasArquivo) // Atualiza os dados do arquivo de franquias
{
    FILE *database = fopen("database/databaseFranquias.dat", "w+b");              // Abre o arquivo de franquias
    fwrite(Franquias, sizeof(Franquia), *(quantidadeFranquiasArquivo), database); // Escreve os dados no arquivo
    fclose(database);                                                             // Fecha o arquivo
} // Fim da função atualizarDados

int existeFranquiaID(Franquia *Franquias, int idBuscar) // Verifica se existe uma franquia com o ID buscado
{
    if (idBuscar == 0) // Se o ID for 0, retorna 0
    {
        return 0;                                         // Retorna 0
    }                                                     // Fim do if
    for (size_t i = 0; i < lerQuantidadeFranquias(); i++) // Percorre todas as franquias
    {
        if (Franquias[i].idFranquia == idBuscar) // Se o ID for igual ao ID buscado
        {
            return 1; // Retorna 1
        }             // Fim do if
    }                 // Fim do for
    return 0;         // Retorna 0
} // Fim da função existeFranquiaID

int existeFranquiaCidade(Franquia *Franquias, char cidade[50]) // Verifica se existe uma franquia com a cidade buscada
{
    for (size_t i = 0; i < lerQuantidadeFranquias(); i++) // Percorre todas as franquias
    {
        if (!strcasecmp(Franquias[i].cidadeFranquia, cidade) && Franquias[i].idFranquia != 0) // Se a cidade for igual a buscada e o ID for diferente de 0
        {
            return 1; // Retorna 1
        }             // Fim do if
    }                 // Fim do for
    return 0;         // Retorna 0
} // Fim da função existeFranquiaCidade

int existeFranquiaGerente(Franquia *Franquias, char gerente[50]) // Verifica se existe uma franquia com o gerente buscado
{
    for (size_t i = 0; i < lerQuantidadeFranquias(); i++) // Percorre todas as franquias
    {
        if (!strcasecmp(Franquias[i].nomeGerente, gerente) && Franquias[i].idFranquia != 0) // Se o nome do gerente for igual a buscado e o ID for diferente de 0
        {
            return 1; // Retorna 1
        }             // Fim do if
    }                 // Fim do for
    return 0;         // Retorna 0
} // Fim da função existeFranquiaGerente

Franquia retornarFranquiaPorNome(char dadoParaBuscar[100], Franquia *Franquias) // Retorna a franquia pelo nome
{
    for (size_t i = 0; i < lerQuantidadeFranquias(); i++) // Percorre todas as franquias
    {
        if (!strcasecmp(Franquias[i].nomeGerente, dadoParaBuscar) && Franquias[i].idFranquia != 0) // Se o nome do gerente for igual a buscado e o ID for diferente de 0
        {
            return Franquias[i]; // Retorna a franquia
        }                        // Fim do if
    }                            // Fim do for
} // Fim da função retornarFranquiaPorNome

Franquia retornarFranquiaPorCidadeGerente(char cidade[50], char gerente[50], Franquia *Franquias) // Retorna a franquia pelo nome do gerente e cidade
{
    for (size_t i = 0; i < lerQuantidadeFranquias(); i++) // Percorre todas as franquias
    {
        if (Franquias[i].idFranquia != 0) // Se o ID for diferente de 0
        {
            if (!strcasecmp(Franquias[i].cidadeFranquia, cidade)) // Se a cidade for igual a buscada
            {
                if (!strcasecmp(Franquias[i].nomeGerente, gerente)) // Se o nome do gerente for igual a buscado
                {
                    return Franquias[i]; // Retorna a franquia
                }                        // Fim do if
            }                            // Fim do if
        }                                // Fim do if
    }                                    // Fim do for
} // Fim da funcao

int retornarFranquiaPorId(int Id, Franquia *Franquias) // Retorna a franquia pelo ID
{
    for (size_t i = 0; i < lerQuantidadeFranquias(); i++)                  // Percorre todas as franquias
    {                                                                      // Se o ID for igual ao ID buscado
        if (Franquias[i].idFranquia == Id && Franquias[i].idFranquia != 0) // Se o ID for igual ao ID buscado e o ID for diferente de 0
        {                                                                  // Se o ID for igual ao ID buscado e o ID for diferente de 0
            return i;                                                      // Retorna o indice da franquia
        }                                                                  // Fim do if
    }                                                                      // Fim do for
} // Fim da função retornarFranquiaPorId

int lerQuantidadeFranquias() // Retorna a quantidade de franquias
{
    FILE *database = fopen("database/databaseFranquias.dat", "rb"); // Abre o arquivo de franquias
    fseek(database, 0, SEEK_END);                                   // Move o ponteiro para o final do arquivo
    int quantidadeBytes = ftell(database);                          // Pega a quantidade de bytes do arquivo
    int quantidadeFranquias = quantidadeBytes / sizeof(Franquia);   // Calcula a quantidade de franquias
    fclose(database);                                               // Fecha o arquivo
    if (database == NULL)                                           // Se o arquivo nao existir
    {
        return 0;               // Retorna 0
    }                           // Fim do if
    return quantidadeFranquias; // Retorna a quantidade de franquias
} // Fim da funcao

char *retornarTipoFranquia(Franquia Franquia) // Retorna o tipo da franquia
{
    if (Franquia.tFranquia == Alugado) // Se o tipo da franquia for alugado
    {
        return "Alugado"; // Retorna "Alugado"
    }                     // Fim do if
    else                  // Se o tipo da franquia for venda
    {
        return "Propria"; // Retorna "Pr�pria"
    }                     // Fim do else
} // Fim da funcao

void lerFranquiasDoArquivo(Franquia *Franquias) // Lê as franquias do arquivo
{
    FILE *database = fopen("database/databaseFranquias.dat", "rb");         // Abre o arquivo de franquias
    fread(Franquias, sizeof(Franquia), lerQuantidadeFranquias(), database); // Lê as franquias do arquivo
    fclose(database);                                                       // Fecha o arquivo
} // Fim da funcao