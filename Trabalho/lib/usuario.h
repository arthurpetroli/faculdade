/**
 * @file usuario.h
 * @author Arthur Henrique de Oliveira Petroli (arthurpetroli@gmail.com)  and Matheus Mazali Maeda (matheusmazalimaeda@alunos.utfpr.edu.br)
 * @brief Arquivo de cabeçalho do usuário
 * @version 0.1
 * @date 2022-06-20
 * 
 * @copyright Copyright (c) 2022
 * 
*/

#ifndef USUARIOS_H  // Se não definido
#define USUARIOS_H  //Define USUARIOS_H
#include <stdlib.h>

typedef struct   //Estrutura usuario
{
    char usuario[30];  //Nome do usuario
    char senha[30];  //Senha do usuario
} Usuario;  //Cria a estrutura do usuario

int existeUsuario();  //Verifica se o usuario ja existe

void criarArquivo();  //Cria o arquivo de usuarios

int validarLogin(Usuario usuarioASerValidado);  //Valida o login do usuario

void fazerLogin();  //Faz o login do usuario

void cadastrarUsuario();  //Cadastra um usuario

#endif  //USUARIOS_H