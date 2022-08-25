/**
 * @file franquias.h
 * @author Arthur Henrique de Oliveira Petroli (arthurpetroli@gmail.com)  and Matheus Mazali Maeda (matheusmazalimaeda@alunos.utfpr.edu.br)
 * @brief Arquivo de cabeçalho da franquia
 * @version 0.1
 * @date 2022-06-20
 * 
 * @copyright Copyright (c) 2022
 * 
*/

#ifndef FRANQUIAS_H  // Se não definido
#define FRANQUIAS_H  //Define FRANQUIAS_H

typedef enum  //Enum para o tipo de franquia
{
    Alugado,  //Franquia alugada
    Propria  //Franquia propria
} tipoFranquia;  //Cria o enum do tipo de franquia

typedef struct  //Estrutura franquia
{
    int idFranquia;  //ID da franquia
    char cidadeFranquia[50];  //Cidade da franquia
    char nomeGerente[50];  //Nome do gerente da franquia
    char Endereco[100];  //Endereco da franquia
    float faturamentoAnual;  //Faturamento anual da franquia
    int clientesAnuais;  //Clientes anuais da franquia
    tipoFranquia tFranquia;  //Tipo de franquia
    int Lanches[100];  //Lanches da franquia
} Franquia;  //Cria a estrutura da franquia

Franquia retornarFranquiaPorCidadeGerente(char cidade[50], char gerente[50], Franquia *Franquias);  //Retorna a franquia pelo nome da cidade e do gerente

int existeFranquiaCidade(Franquia *Franquias, char cidade[50]);  //Verifica se existe uma franquia com a cidade

int existeFranquiaGerente(Franquia *Franquias, char gerente[50]);   //Verifica se existe uma franquia com o gerente

char *retornarTipoFranquia(Franquia Franquia);  //Retorna o tipo de franquia

void atualizarDados(Franquia *Franquias, int *quantidadeFranquiasArquivo);  //Atualiza os dados da franquia

int existeFranquiaID(Franquia *Franquias, int idBuscar);  //Verifica se existe uma franquia com o ID

int retornarFranquiaPorId(int Id, Franquia *Franquias);  //Retorna o ID da franquia pelo ID

Franquia retornarFranquiaPorNome(char dadoParaBuscar[100], Franquia *Franquias);  //Retorna a franquia pelo nome

int lerQuantidadeFranquias();  //Lê a quantidade de franquias do arquivo

void lerFranquiasDoArquivo(Franquia *Franquias);  //Lê as franquias do arquivo

#endif  //FRANQUIAS_H