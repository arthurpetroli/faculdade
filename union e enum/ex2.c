/*
@file: ex2.c
@author: Arthur Petroli
@date: 17 march 22
@brief: ex2
*/
/*Crie um programa de cadastro que receba, armazene, e
em seguida, exiba os dados de 5 pessoas.
 Cada pessoa possui: nome, idade, peso, data de nascimento,
brasileiro ou estrangeiro. Caso seja Brasileiro, armazene o CPF,
caso estrangeiro, armazene o passaporte.
 Regra: Utilize structs, typedef, union e enum.
*/

/** determinação das bibliotecas */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef enum {brasileiro, entrangeiro} nacionalidades;

typedef struct 
{
    char nome[30];
    int idade;
    float peso;
    char nascimento[20];
    char nacionalidade[20];
    
    nacionalidades nacionalidades1;
    union origem
    {
        char cpf[20];
        char passaporte[20];
    };
    
}individuo;


int main(){
    
    individuo individuo[5];
    union origem origem[5];

    for (size_t i = 0; i < 5; i++)
    {
       printf("\nDigite o nome:");
        fgets(individuo[i].nome,30,stdin);
        individuo[i].nome[strcspn(individuo[i].nome,"\n")]='\0';
        setbuf(stdin,NULL);
    
        printf("\nDigite a idade:");
        scanf("%d",&individuo[i].idade);
    
        printf("\nDigite o peso:");
        scanf("%f",&individuo[i].peso);

        setbuf(stdin,NULL);
    
        printf("\nDigite a data de nescimento:");
        scanf("%s",&individuo[i].nascimento);

        setbuf(stdin,NULL);

        printf("\nDigite a nacionalidade:");
        fgets(individuo[i].nacionalidade,20,stdin);
        individuo[i].nacionalidade[strcspn(individuo[i].nacionalidade,"\n")]='\0';
        setbuf(stdin,NULL);


        if (strcmp(individuo[i].nacionalidade, "brasileiro")==0)
        {
            printf("\nDigite o cpf:");
            scanf("%s",&origem[i].cpf);
            setbuf(stdin,NULL);
        }else
        {
            printf("\nDigite o passaporte:");
            scanf("%s",&origem[i].passaporte);
            setbuf(stdin,NULL);
        }   
    }
    

    
    
    for (size_t i = 0; i < 5; i++)
    {
        printf("Nome:%s\n",individuo[i].nome);

        printf("Idade:%d\n",individuo[i].idade);

        printf("Peso:%.2f\n",individuo[i].peso);

        printf("Data de nascimento:%s\n",individuo[i].nascimento);

        printf("Nacionalidade:%s\n",individuo[i].nacionalidade);

        if (strcmp(individuo[i].nacionalidade, "brasileiro")==0)
        {
            printf("Cpf:%s\n\n\n",origem[i].cpf);
        }else
        {
            printf("Passaporte:%s\n\n\n",origem[i].passaporte);
        }
    }
    
      
    return 0;
}