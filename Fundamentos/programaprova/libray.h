#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef enum
{
 Propria,
 Alugado
} tipoFranquia;

typedef enum
{
 Vegetariano,
 temCarne
} tipoLanche;

typedef struct
{
 int idLanche;
 char nomeLanche[30];
 float valorLanche[30];
 tipoLanche tipoLanche;
} Lanche;

typedef struct
{
 int idFranquia;
 char cidadeFranquia[50];
 char nomeGerente[50];
 char Endere‡o[100];
 float faturamentoAnual;
 tipoFranquia tipoFranquia;
 Lanche Lanches[10];
} Franquia;

typedef struct
{
 char usuario[30];
 char senha[30];
} Usuario;

void Amarelo(char Mensagem[200])
{
 printf("\033[1;33m");
 printf("%s\n", Mensagem);
 Resetar();
}
void Verde(char Mensagem[200])
{
 printf("\033[0;32m");
 printf("%s\n", Mensagem);
 Resetar();
}
void Vermelho(char Mensagem[200])
{
 printf("\033[0;31m");
 printf("%s", Mensagem);
 Resetar();
}
void Resetar()
{
 printf("\033[0m");
}
void Limpar()
{
 for (size_t i = 0; i < 100; i++)
 {
  printf("\n");
 }
}
void criptografa(char *palavraParaCriptografar)
{
 while (*palavraParaCriptografar != '\0')
 {
  *palavraParaCriptografar = (*palavraParaCriptografar) + 2;
  palavraParaCriptografar++;
 }
}

void descriptografar(char *palavraParaDescriptografar)
{
 while (*palavraParaDescriptografar != '\0')
 {
  *palavraParaDescriptografar = (*palavraParaDescriptografar) - 2;
  palavraParaDescriptografar++;
 }
}