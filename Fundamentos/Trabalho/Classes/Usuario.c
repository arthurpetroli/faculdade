/**
 * @file Usuario.c
 * @author Arthur Henrique de Oliveira Petroli (arthurpetroli@gmail.com)  and Matheus Mazali Maeda (matheusmazalimaeda@alunos.utfpr.edu.br)
 * @brief usuario trabalho
 * @version 0.1
 * @date 2022-06-20
 *
 * @copyright Copyright (c) 2022
 *
 */

#include <stdlib.h>
#include <stdio.h>
#include "cores.h"
#include "usuario.h"

void Limpar() // Limpa a tela
{
    system("cls"); // Limpa a tela
}

void criptografa(char *palavraParaCriptografar) // Criptografa a senha
{
    while (*palavraParaCriptografar != '\0') // Enquanto não chegar no fim da string
    {
        *palavraParaCriptografar = (*palavraParaCriptografar) + 2; // Soma 2 ao caractere
        palavraParaCriptografar++;                                 // Avança para o proximo caractere
    }                                                              // Fim do while
} // Fim da funcao

void descriptografar(char *palavraParaDescriptografar) // Descriptografa a senha
{
    while (*palavraParaDescriptografar != '\0') // Enquanto não chegar no fim da string
    {
        *palavraParaDescriptografar = (*palavraParaDescriptografar) - 2; // Subtrai 2 ao caractere
        palavraParaDescriptografar++;                                    // Avança para o proximo caractere
    }                                                                    // Fim do while
} // Fim da funcao

int existeUsuario() // Verifica se o usuario existe
{
    FILE *databaseUsuarios = fopen("database/usuarios.dat", "rb"); // Abre o arquivo de usuarios
    if (databaseUsuarios != NULL)                                  // Se o arquivo foi aberto
    {
        fclose(databaseUsuarios); // Fecha o arquivo
        return 0;                 // Retorna 0
    }                             // Fim do if
    else                          // Se o arquivo não foi aberto
    {
        fclose(databaseUsuarios); // Fecha o arquivo
        return 1;                 // Retorna 1
    }
} // Fim da funcao

int validarLogin(Usuario usuarioASerValidado) // Valida o login do usuario
{
    Usuario usuarioVerdadeiro;                                                                                                          // Cria uma estrutura do usuario
    FILE *databaseUsuarios = fopen("database/usuarios.dat", "rb");                                                                      // Abre o arquivo de usuarios
    fread(&usuarioVerdadeiro, sizeof(Usuario), 1, databaseUsuarios);                                                                    // Lê o usuario
    descriptografar(&usuarioVerdadeiro.usuario);                                                                                        // Descriptografa o usuario
    descriptografar(&usuarioVerdadeiro.senha);                                                                                          // Descriptografa a senha
    if (!strcmp(usuarioASerValidado.usuario, usuarioVerdadeiro.usuario) && !strcmp(usuarioASerValidado.senha, usuarioVerdadeiro.senha)) // Se os usuarios e as senhas forem iguais
    {
        fclose(databaseUsuarios); // Fecha o arquivo
        return 1;                 // Retorna 1
    }                             // Fim do if
    else                          // Se os usuarios e as senhas não forem iguais
    {
        fclose(databaseUsuarios); // Fecha o arquivo
        return 0;                 // Retorna 0
    }                             // Fim do else
} // Fim da funcao

void fazerLogin()
{
    Usuario UsuarioLogar;                                                                // Cria uma estrutura do usuario
    printf("----------- SISTEMA INTEGRADO DE GERENCIAMENTO DE FRANQUIAS -----------\n"); // Imprime o titulo do sistema
    do                                                                                   // Enquanto o usuario não digitar uma senha valida
    {
        printf("Insira seu usuario cadastrado: ");                        // Imprime o texto
        fgets(UsuarioLogar.usuario, 30, stdin);                           // Lê o usuario
        UsuarioLogar.usuario[strcspn(UsuarioLogar.usuario, "\n")] = '\0'; // Remove o \n do fim da string
        fflush(stdin);                                                    // Limpa o buffer
        printf("Insira sua senha: ");                                     // Imprime o texto
        fgets(UsuarioLogar.senha, 30, stdin);                             // Lê a senha
        UsuarioLogar.senha[strcspn(UsuarioLogar.senha, "\n")] = '\0';     // Remove o \n do fim da string
        fflush(stdin);                                                    // Limpa o buffer
        if (validarLogin(UsuarioLogar))                                   // Se o usuario for validado
        {
            Limpar();                                                                     // Limpa a tela
            printf("\033[0;32m");                                                         // Muda a cor para verde
            printf("Usuario validado com sucesso! Bem-vindo %s\n", UsuarioLogar.usuario); // Imprime o texto
            Resetar();                                                                    // Muda a cor para padrão
        }                                                                                 // Fim do if
        else                                                                              // Se o usuario não for validado
        {
            Vermelho("Usuario e/ou senha incorreta!\n"); // Imprime o texto
        }                                                // Fim do else
    } while (!validarLogin(UsuarioLogar));               // Enquanto o usuario não digitar uma senha valida
} // Fim da funcao

void cadastrarUsuario() // Cadastra um usuario
{
    Usuario usuarioCadastrar;                                                                                                                                                                          // Cria uma estrutura do usuario
    char confirmacaoSenha[30];                                                                                                                                                                         // Cria uma string para confirmar a senha
    FILE *databaseUsuarios = fopen("database/usuarios.dat", "wb");                                                                                                                                     // Abre o arquivo de usuarios
    printf("----------- SISTEMA INTEGRADO DE GERENCIAMENTO DE FRANQUIAS -----------\nComo e a primeira vez que o gerenciador e aberto, cadastre um usuario e uma senha para acessa-lo futuramente\n"); // Imprime o texto
    printf("Insira o usuario que sera cadastrado: ");                                                                                                                                                  // Imprime o texto
    fgets(usuarioCadastrar.usuario, 30, stdin);                                                                                                                                                        // Lê o usuario
    usuarioCadastrar.usuario[strcspn(usuarioCadastrar.usuario, "\n")] = '\0';                                                                                                                          // Remove o \n do fim da string
    do                                                                                                                                                                                                 // Enquanto o usuario não digitar uma senha valida
    {
        printf("Insira a senha que sera cadastrada: ");                       // Imprime o texto
        fgets(usuarioCadastrar.senha, 30, stdin);                             // Lê a senha
        usuarioCadastrar.senha[strcspn(usuarioCadastrar.senha, "\n")] = '\0'; // Remove o \n do fim da string
        printf("Confirme a senha que sera cadastrada: ");                     // Imprime o texto
        fgets(confirmacaoSenha, 30, stdin);                                   // Lê a senha
        confirmacaoSenha[strcspn(confirmacaoSenha, "\n")] = '\0';             // Remove o \n do fim da string
        if (strcmp(confirmacaoSenha, usuarioCadastrar.senha))                 // Se as senhas forem diferentes
        {
            Vermelho("As senhas inseridas nao correspondem, favor inserir novamente!\n"); // Imprime o texto
        }                                                                                 // Fim do if
    } while (strcmp(confirmacaoSenha, usuarioCadastrar.senha));                           // Enquanto as senhas forem diferentes
    criptografa(&usuarioCadastrar.usuario);                                               // Criptografa o usuario
    criptografa(&usuarioCadastrar.senha);                                                 // Criptografa a senha
    fwrite(&usuarioCadastrar, sizeof(Usuario), 1, databaseUsuarios);                      // Escreve o usuario no arquivo
    Limpar();                                                                             // Limpa a tela
    Verde("Cadastrado com sucesso!\n");                                                   // Imprime o texto
    fclose(databaseUsuarios);                                                             // Fecha o arquivo
} // Fim da funcao