 /*
@file simulacao.c
 * @author João Vitor Levorato de Souza (joaosouza.2021@alunos.utfpr.edu.br)
 * @brief Você foi contratado pela Riot Games para elaborar partes do sistema sistema de Ranking do League of Legends. Para isso:
 *
 * a) Defina um tipo e estrutura para salvar os dados de jogadores para um Ranking.
 * Cada jogador possui: nome, vitórias, derrotas, tier(nível) e pontos.
 *
 * Os tiers são: Bronze, Prata, Ouro, Platina, Diamante e Desafiante. Para organizar os níveis utilize uma enumeração.
 *
 * b) Receba do teclado e armazene os dados de 6 jogadores. Não devem ser permitidos valores negativos, novos valores devem ser solicitados caso necessário.
 *
 * c) Exiba uma tabela alinhada com o nome e a taxa de vitórias (winrate) de cada jogador
 * winrate = vitórias / (vitórias+derrotas) * 100.
 * Cada calculo deve ser feito por meio de uma função adicional que recebe o número de vitórias e derrotas via cópia e retorna o winrate.
 *
 * d) Exiba uma tabela com os líderes (maior número de pontos) de cada um dos níveis. Para isso, faça uma função extra que receba um tier e retorne uma estrutura do tipo Jogador com os dados do líder.
 *
 * e) Faça a busca de um jogador pelo nome digitado. A busca deve ser feita por uma função adicional que recebe o nome e retorna os dados de vitórias, derrotas, tier e pontos via referência.
 *
 * f) Utilizando uma função recursiva, calcule a soma de todas as partidas (vitórias e derrotas) de todos os jogadores.
 *
 * Cada um dos itens de B a E deve ser implementada em uma função diferente.
 * Não é permitido o uso de variáveis globais.
 * Nas funções extras, caso necessário, utilize parâmetros adicionais.
 * @version 0.1
 * @date 2022-04-20
 *
 * @copyright Copyright (c) 2022
 *
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef enum
{
 BRONZE,
 PRATA,
 OURO,
 PLATINA,
 DIAMANTE,
 DESAFIANTE
} tier;

typedef struct
{
 char nome[20];
 int vitorias;
 int derrotas;
 int pontos;
 int nivel;
 tier tiers1;

} jogador;

void dadosjogadores(jogador jogadores[2])
{
 for (size_t i = 0; i < 2; i++)
 {
  printf("Digite o nome do jogador:");
  setbuf(stdin, NULL);
  fgets(jogadores[i].nome, 20, stdin);
  jogadores[i].nome[strcspn(jogadores[i].nome, "\n")] = '\0';
  do
  {
   printf("Digite a quantidade de vitorias:");
   scanf("%i", &jogadores[i].vitorias);

   printf("Digite a quantidade de derrotas:");
   scanf("%i", &jogadores[i].derrotas);

   printf("Digite a quantidade de pontos:");
   scanf("%i", &jogadores[i].pontos);

   if (jogadores[i].vitorias < 0 || jogadores[i].derrotas < 0 || jogadores[i].pontos < 0)
   {
    printf("Erro!!!\nAlguns dos valores inseridos Ã© negativo, favor inserir novamente!\n");
   }

  } while (jogadores[i].vitorias < 0 || jogadores[i].derrotas < 0 || jogadores[i].pontos < 0);

  setbuf(stdin, NULL);

  printf("Tier:");
  printf("1-BRONZE, 2-PRATA, 3-OURO, 4-PLATINA, 5-DIAMANTE, 6-DESAFIANTE: ");
  scanf("%i", &jogadores[i].nivel);

  setbuf(stdin, NULL);
 }
}

void infojogadores(jogador jogadores[2], float winrate[2])
{
 for (size_t i = 0; i < 2; i++)
 {
  float total = jogadores[i].vitorias + jogadores[i].derrotas;
  winrate[i] = (float)(jogadores[i].vitorias / total) * 100;
  printf("%s----%.2f%%\n", jogadores[i].nome, winrate[i]);
 }
}

void maior(jogador jogadores[2], int digiteTier, int infmaior, int maiors)
{
 printf("Tier:");
 printf("1-BRONZE, 2-PRATA, 3-OURO, 4-PLATINA, 5-DIAMANTE, 6-DESAFIANTE\n");
 printf("DIgite o tier para saber o lider:");
 scanf("%i", &digiteTier);

 for (size_t i = 0; i < 2; i++)
 {
  if (digiteTier == jogadores[i].nivel)
  {
   if (maiors < jogadores[i].pontos)
   {
    maiors = jogadores[i].pontos;
    infmaior = i;
   }
  }
 }

 printf("Jogador: %s | Vitorias: %i | Derrotas: %i | Nivel: %i | Pontos: %i\n\n", jogadores[infmaior].nome, jogadores[infmaior].vitorias, jogadores[infmaior].derrotas, jogadores[infmaior].nivel, jogadores[infmaior].pontos);
}

void busca(char busca[20], jogador jogadores[2], int *indice)
{
 setbuf(stdin, NULL);
 printf("Digite o jogador que quer buscar:");
 fgets(busca, 20, stdin);
 busca[strcspn(busca, "\n")] = '\0';
 setbuf(stdin, NULL);

 for (size_t i = 0; i < 2; i++)
 {
  if (strcmp(jogadores[i].nome, busca) == 0)
  {
   *indice = i;
  }
 }
}

int recursiva(jogador jogadores[2], int i, int partidas)
{

 if (i == 2)
 {
  return 0;
 }
 else
 {
  partidas = jogadores[i].vitorias + jogadores[i].derrotas;
  return partidas + recursiva(jogadores, i + 1, partidas);
 }
}

int main()
{
 jogador jogadores[2];
 float winrate[2];
 int digiteTier = 0;
 int infmaior = 0;
 int maiors = 0;
 char buscar[20];
 int indice;
 int i = 0;
 int partidas;
 char elos[20][2] = {"BRONZE","PRATA","OURO","PLATINA","DIAMANTE","DESAFIANTE"};

 dadosjogadores(jogadores);
 infojogadores(jogadores, winrate);
 maior(jogadores, digiteTier, infmaior, maiors);
 busca(buscar, jogadores, &indice);
 printf("%i---%i---%s---%i", jogadores[indice].vitorias, jogadores[indice].derrotas, elos[jogadores[i].nivel -1], jogadores[indice].pontos);
 int total = recursiva(jogadores, i, partidas);
 printf("\nTotal de partidas e: %i", total);

 return 0;
}