/**
 * @file main.c
 * @author Arthur Henrique de Oliveira Petroli (arthurpetroli@gmail.com)  and Matheus Mazali Maeda (matheusmazalimaeda@alunos.utfpr.edu.br)
 * @brief main trabalho
 * @version 0.1
 * @date 2022-06-20
 * 
 * @copyright Copyright (c) 2022
 * 
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include "usuario.h"
#include "menu.h"
#include "franquias.h"
#include "lanches.h"

int main()  //Início do programa
{
    int quantidadeFranquiasArquivo = lerQuantidadeFranquias();  //Lê a quantidade de franquias do arquivo
    int *ptrQuantidadeFranquiasArquivo = &quantidadeFranquiasArquivo;  //Ponteiro para a quantidade de franquias do arquivo

    int quantidadeLanchesArquivo = lerQuantidadeLanches();  //Lê a quantidade de lanches do arquivo
    int *ptrQuantidadeLanchesArquivo = &quantidadeLanchesArquivo;  //Ponteiro para a quantidade de lanches do arquivo
  
    Franquia *Franquias = (Franquia *)calloc(100, sizeof(Franquia));  //Aloca memória para 100 franquias
    lerFranquiasDoArquivo(Franquias);  //Lê as franquias do arquivo

    Lanche *Lanches = (Lanche *)calloc(200, sizeof(Lanche));  //Aloca memória para 200 lanches
    lerLanchesDoArquivo(Lanches);  //Lê os lanches do arquivo

    Limpar();  //Limpa a tela
    if (existeUsuario())
    {
        cadastrarUsuario();
    }
    fazerLogin();
    exibirMenuGeral(Franquias, ptrQuantidadeFranquiasArquivo, Lanches, ptrQuantidadeLanchesArquivo);  //Exibe o menu geral
}  //Fim do programa