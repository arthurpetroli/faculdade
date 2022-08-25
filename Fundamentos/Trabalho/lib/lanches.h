/**
 * @file lanches.h
 * @author Arthur Henrique de Oliveira Petroli (arthurpetroli@gmail.com)  and Matheus Mazali Maeda (matheusmazalimaeda@alunos.utfpr.edu.br)
 * @brief Arquivo de cabeçalho do lanches
 * @version 0.1
 * @date 2022-06-20
 * 
 * @copyright Copyright (c) 2022
 * 
*/

#ifndef LANCHES_H  // Se não definido
#define LANCHES_H  //Define LANCHES_H

typedef enum //Enum para definir o tipo de lanche
{
    Vegetariano,  //Lanche vegetariano
    temCarne    //Lanche com carne
} tipoLanche; //Tipo de lanche

typedef struct  //Estrutura lanche
{
    int idLanche;  //ID do lanche
    int idFranquiaPertencente;  //ID da franquia que o lanche pertence
    char nomeLanche[50];  //Nome do lanche
    float valorLanche;  //Valor do lanche
    tipoLanche tipoLanche;  //Tipo de lanche
    float custoProducao;  //Custo de producao do lanche
    char descricaoDoLanche[150];  //Descricao do lanche
    int calorias;  //Calorias do lanche
} Lanche;  //Cria a estrutura do lanche

int retornarLanchePorNomeR(char busca[50], Lanche *Lanches);  //Retorna o ID do lanche pelo nome

int existeLanchesNome(Lanche *Lanches, char busca[50]);  //Verifica se existe um lanche com o nome

void lerLanchesDoArquivo(Lanche *Lanches);  //Lê os lanches do arquivo

char *retornarTipoLanche(Lanche Lanche);  //Retorna o tipo de lanche

int lerQuantidadeLanches();  //Lê a quantidade de lanches do arquivo

int retornarLanchePorId(int Id, Lanche *Lanches);  //Retorna o ID do lanche pelo ID

Lanche retornarLanchePorNome(char dadoParaBuscar[100], Lanche *Lanches);  //Retorna o lanche pelo nome

int existeLanchesID(Lanche *Lanches, int idBuscar);  //Verifica se existe um lanche com o ID

void atualizarDadosLanches(Lanche *Lanches, int *quantidadeLanchesArquivo);  //Atualiza os dados do lanche

#endif  //LANCHES_H