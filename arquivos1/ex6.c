/**
 * @file ex6.c
 * @author Arthur Henrique de Oliveira Petroli (arthurpetroli@gmail.com)
 * @brief  Elabore um programa no qual o usuário informe o nome
    de um arquivo texto e uma palavra, e o programa informe o
    número de vezes que aquela palavra aparece
 * @version 0.1
 * @date 2022-05-22
 * 
 * @copyright Copyright (c) 2022
 * 
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

int main()
{
 char entrada[20], palavra[20], c, comparacao[20];
 int vezes = 0;
 FILE *fp;

 printf("Insira o nome do arquivo: ");
 fgets(entrada, 20, stdin);
 entrada[strcspn(entrada, "\n")] = '\0';

 fp = fopen(entrada, "r");

 if (fp == NULL)
 {
  printf("Arquivo %s nao encontrado", entrada);
  exit(1);
 }

 printf("Insira a palavra que voce quer buscar: ");
 fgets(palavra, 20, stdin);
 palavra[strcspn(palavra, "\n")] = '\0';

 while ((c = fgetc(fp)) != EOF)
 {
  if (c == palavra[0])
  {
   comparacao[0] = c;
   for (size_t i = 1; i < strlen(palavra); i++)
   {
    comparacao[i] = fgetc(fp);
   }
   if (!strcasecmp(palavra, comparacao))
   {
    vezes++;
   }
  }
 }
 if (vezes == 0)
 {
  printf("A palavra %s nao foi encontrada no arquivo %s\n", palavra, entrada);
  exit(1);
 }
 if (vezes == 1)
 {
  printf("A palavra %s foi encontrada 1 vez no arquivo %s\n", palavra, entrada);
  exit(1);
 }

 printf("A palavra %s foi encontrada %i vezes no arquivos%s\n", palavra, vezes, entrada);
 fclose(fp);
}