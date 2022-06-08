/**
 * @file ex4.c
 * @author Arthur Henrique de Oliveira Petroli (arthurpetroli@gmail.com)
 * @brief 4) Elabore um programa no qual o usuário informe o nome de um arquivo texto e uma palavra, e o programa informe o número de vezes que aquela palavra aparece dentro do arquivo.
 * @version 0.1
 * @date 2022-06-07
 * 
 * @copyright Copyright (c) 2022
 * 
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(){
    FILE *prog;
    char arquivo[20],palavra[20];
    char *ponteiro;
    char texto[100];
    int vezes;

    printf("Digite o nome do arquivo que quer acessar: ");
    fgets(arquivo,21,stdin);
    arquivo[strcspn(arquivo,"\n")] = '\0';
    setbuf(stdin, NULL);

    printf("Digite a palavra: ");
    fgets(palavra,21,stdin);
    palavra[strcspn(palavra,"\n")] = '\0';
    setbuf(stdin, NULL);

    prog = fopen(arquivo,"r");
    if(prog == NULL){
      printf("Erro na abertura do arquivo");
      exit(1); 
   }

    ponteiro = strstr(fgets(texto,100,prog) , palavra);
        
    if (ponteiro)
    {
        printf("%s esta presente no arquivo",palavra);
    }else
    {
        printf("%s nao esta presente no arquivo",palavra);
    }

    fclose(prog);

}