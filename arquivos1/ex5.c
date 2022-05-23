/**
 * @file ex5.c
 * @author Arthur Henrique de Oliveira Petroli (arthurpetroli@gmail.com)
 * @brief Elabore um programa para calcular e exibir o número de
    vezes que cada letra ocorre dentro de um arquivo texto.
    Ignore as letras com acento. O usuário deverá informar o
    nome do arquivo 
 * @version 0.1
 * @date 2022-05-17
 * 
 * @copyright Copyright (c) 2022
 * 
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

int main(){
   FILE *prog;
   char texto1[100],c;
   char alfabeto[26]={'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};
   int vetor[26];
   int vezes=0;

   printf("Insira o nome do arquivo: ");
   fgets(texto1,21,stdin);
   texto1[strcspn(texto1,"\n")] = '\0';
   setbuf(stdin, NULL);

   prog = fopen(texto1,"r");
   if(prog == NULL){
      printf("Erro na abertura do arquivo");
      exit(1); 
   }

   for (size_t i = 0; i < 26; i++)
   {
      vetor[i]=0;
   }
   

   while ((c = fgetc(prog)) != EOF)
   {
      for (size_t i = 0; i < 26; i++)
      {
         if(c == alfabeto[i]){
            vetor[i]++;
         }
      } 
   }

   for (size_t i = 0; i < 26; i++)
   {
      printf("Letra:%c -- Vezes:%i\n\n",alfabeto[i],vetor[i]);
   }

   fclose(prog);
}