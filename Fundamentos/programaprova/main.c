/**
 * @file main.c
 * @author Matheus Mazali Maeda e Arthur Henrique (matheusmazalimaeda@alunos.utfpr.edu.br)
 * @brief
 * @version 0.1
 * @date 2022-06-01
 *
 * @copyright Copyright (c) 2022
 *
 */

#include "libray.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define T 4

int existeUsuario()
{
 FILE *databaseUsuarios = fopen("usuario.dat", "rb");
 if (databaseUsuarios != NULL)
 {
  fclose(databaseUsuarios);
  return 0;
 }
 else
 {
  fclose(databaseUsuarios);
  return 1;
 }
}

int validarLogin(Usuario usuarioASerValidado)
{
 Usuario usuarioVerdadeiro;
 FILE *databaseUsuarios = fopen("usuario.dat", "rb");
 fread(&usuarioVerdadeiro, sizeof(Usuario), 1, databaseUsuarios);
 descriptografar(&usuarioVerdadeiro.usuario);
 descriptografar(&usuarioVerdadeiro.senha);
 if (!strcmp(usuarioASerValidado.usuario, usuarioVerdadeiro.usuario) && !strcmp(usuarioASerValidado.senha, usuarioVerdadeiro.senha))
 {
  fclose(databaseUsuarios);
  return 1;
 }
 else
 {
  fclose(databaseUsuarios);
  return 0;
 }
}
void fazerLogin()
{
 Usuario Usuario;
 FILE *databaseUsuarios = fopen("usuario.dat", "rb");
 printf("----------- SISTEMA INTEGRADO DE GERENCIAMENTO DE FRANQUIAS -----------\n");
 do
 {
  printf("Usu rio: ");
  fgets(Usuario.usuario, 30, stdin);
  Usuario.usuario[strcspn(Usuario.usuario, "\n")] = '\0';
  fflush(stdin);
  printf("Senha: ");
  fgets(Usuario.senha, 30, stdin);
  Usuario.senha[strcspn(Usuario.senha, "\n")] = '\0';
  fflush(stdin);
  if (validarLogin(Usuario))
  {
   Limpar();
   Verde("Validado com sucesso!\n");
  }
  else
  {
   Vermelho("Usu rio e/ou senha incorreta!\n");
  }
 } while (!validarLogin(Usuario));
 fclose(databaseUsuarios);
}
void cadastrarUsuario()
{
 Usuario usuarioCadastrar;
 char confirmacaoSenha[30];
 FILE *databaseUsuarios = fopen("usuario.dat", "wb");
 printf("----------- SISTEMA INTEGRADO DE GERENCIAMENTO DE FRANQUIAS -----------\nComo ‚ a primeira vez que o gerenciador ‚ aberto, cadastre um usu rio e uma senha para acess -lo futuramente\n");
 printf("Insira o usu rio que ser  cadastrado: ");
 fgets(usuarioCadastrar.usuario, 30, stdin);
 usuarioCadastrar.usuario[strcspn(usuarioCadastrar.usuario, "\n")] = '\0';
 do
 {
  printf("Insira a senha que ser  cadastrada: ");
  fgets(usuarioCadastrar.senha, 30, stdin);
  usuarioCadastrar.senha[strcspn(usuarioCadastrar.senha, "\n")] = '\0';
  printf("Confirme a senha que ser  cadastrada: ");
  fgets(confirmacaoSenha, 30, stdin);
  confirmacaoSenha[strcspn(confirmacaoSenha, "\n")] = '\0';
  if (strcmp(confirmacaoSenha, usuarioCadastrar.senha))
  {
   Vermelho("As senhas inseridas n?o correspondem, favor inserir novamente!\n");
  }
 } while (strcmp(confirmacaoSenha, usuarioCadastrar.senha));
 criptografa(&usuarioCadastrar.usuario);
 criptografa(&usuarioCadastrar.senha);
 fwrite(&usuarioCadastrar, sizeof(Usuario), 1, databaseUsuarios);
 Limpar();
 Verde("Cadastrado com sucesso!\n");
 fclose(databaseUsuarios);
}
void adicionarFranquia()
{
 Franquia FranquiaParaCadastrar;
 int Entrada;
 FILE *database = fopen("database.bin", "a+b");
 printf("Insira a cidade onde est  localizada a franquia: ");
 fgets(FranquiaParaCadastrar.cidadeFranquia, 50, stdin);
 FranquiaParaCadastrar.cidadeFranquia[strcspn(FranquiaParaCadastrar.cidadeFranquia, "\n")] = '\0';
 fflush(stdin);
 printf("Insira o endere‡o desta franquia: ");
 fgets(FranquiaParaCadastrar.Endereco, 50, stdin);
 FranquiaParaCadastrar.Endereco[strcspn(FranquiaParaCadastrar.Endereco, "\n")] = '\0';
 fflush(stdin);
 printf("Insira o nome do gerente desta franquia: ");
 fgets(FranquiaParaCadastrar.nomeGerente, 50, stdin);
 FranquiaParaCadastrar.nomeGerente[strcspn(FranquiaParaCadastrar.nomeGerente, "\n")] = '\0';
 fflush(stdin);
 printf("Insira o faturamento anual desta franquia: ");
 scanf("%f", &FranquiaParaCadastrar.faturamentoAnual);
 fflush(stdin);
 do
 {
  printf("Qual o tipo desta franquia: \n1 - Pr¢pria\n2 - Alugada para terceiros\n\nEntrada de dados: ");
  scanf("%i", &Entrada);
  switch (Entrada)
  {
  case 1:
   FranquiaParaCadastrar.tFranquia = Propria;
   break;
  case 2:
   FranquiaParaCadastrar.tFranquia = Alugado;
   break;
  default:
   Vermelho("Voce inseriu uma fun‡?o inv lida! Tente novamente.\n");
   break;
  }
 } while (Entrada != 1 && Entrada != 2);
 fwrite(&FranquiaParaCadastrar, sizeof(Franquia), 1, database);
}
void exibirMenu(Franquia Franquias[])
{
 int Entrada;
 printf("----------- SISTEMA INTEGRADO DE GERENCIAMENTO DE FRANQUIAS -----------\n");
 printf("1 - Adicionar Franquia\n2 - Editar Franquia\n3 - Remover Franquia\n4 - Exibir todas as Franquias\n\n");
 printf("Insira uma op‡?o: ");
 scanf("%i", &Entrada);
 switch (Entrada)
 {
 case 1:
  adicionarFranquia(Franquias);
  break;
 case 2:
  break;
 case 3:
  break;
 case 4:
  break;
 default:
  break;
 }
}
int main()
{
 if (existeUsuario())
 {
  cadastrarUsuario();
 }
 fazerLogin();
}