/**
 * @file menu.h
 * @author Arthur Henrique de Oliveira Petroli (arthurpetroli@gmail.com)  and Matheus Mazali Maeda (matheusmazalimaeda@alunos.utfpr.edu.br)
 * @brief Arquivo de cabeçalho do menu
 * @version 0.1
 * @date 2022-06-20
 *
 * @copyright Copyright (c) 2022
 *
 */

#ifndef MENU_H // Se não definido
#define MENU_H // Define MENU_H
#include <stdlib.h>
#include "franquias.h"
#include "lanches.h"

void exportarCSV(Franquia *Franquias, Lanche *Lanches); // Exporta os dados para um arquivo CSV

void adicionarLanche(Franquia *Franquias, int *quantidadeFranquiasArquivo, Lanche *Lanches, int *quantidadeLanchesArquivo); // Adiciona um lanche ao arquivo

void listarLanches(Lanche *Lanches); // Lista os lanches

void pesquisarFranquia(Franquia *Franquias, int *quantidadeFranquiasArquivo, Lanche *Lanches); // Pesquisa uma franquia

void removerFranquia(Franquia *Franquias, int *quantidadeFranquiasArquivo); // Remove uma franquia

void cabecalho(); // Imprime o cabeçalho do menu

void exportarCSV(); // Exporta os dados para um arquivo CSV

void listarFranquias(Franquia *Franquias); // Lista as franquias

void adicionarFranquia(Franquia *Franquias, int *quantidadeFranquiasArquivo); // Adiciona uma franquia

void AlterarCardapioMenu(Franquia *Franquias); // Altera o cardapio de uma franquia

void editarFranquia(Franquia *Franquias, int *quantidadeFranquiasArquivo);                                                  // Edita uma franquia
void exibirMenuGeral(Franquia *Franquias, int *quantidadeFranquiasArquivo, Lanche *Lanches, int *quantidadeLanchesArquivo); // Exibe o menu geral

void exibirMenuFranquias(Franquia *Franquias, int *quantidadeFranquiasArquivo, Lanche *Lanches, int *quantidadeLanchesArquivo); // Exibe o menu das franquias

void exibirMenuLanches(Franquia *Franquias, int *quantidadeFranquiasArquivo, Lanche *Lanches, int *quantidadeLanchesArquivo); // Exibe o menu dos lanches

#endif // MENU_H