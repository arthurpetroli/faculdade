/*
@file: ex3.c
@author: Arthur Petroli
@date: 20 march 22
@brief: ex3
*/
/*Crie um Sistema de Gerenciamento de Bandas seguindo os seguintes
passos:
 a) Defina uma estrutura que irá representar bandas de música. Essa estrutura deve
ter o nome da banda, que tipo de música ela toca, o número de integrantes e em que
posição do ranking essa banda está dentre as suas 5 bandas favoritas;
 b) Crie uma função para preencher as 5 estruturas de bandas criadas no exemplo
passado. Após criar e preencher, exiba todas as informações das bandas/estruturas.
 c) Crie uma função que peça ao usuário um número de 1 até 5. Em seguida, seu
programa deve exibir informações da banda cuja posição no seu ranking é a que foi
solicitada pelo usuário;
 d) Crie uma função que peça ao usuário um tipo de música e exiba as bandas com
esse tipo de música no seu ranking.
 e) Crie uma função que peça o nome de uma banda ao usuário e diga se ela está
entre suas bandas favoritas ou não;
 f) Agora junte tudo e crie um menu com as opções de preencher as estruturas e
todas as opções das questões passadas.
*/

/** determinação das bibliotecas */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/** definiçao de estrutura */
typedef struct 
{
    char nome[20];
    char estilo[20];
    int integrantes;
    int posicao;
}Bandas;

/** funçao pede ao cliente informaçoes da banda e mostra elas */
void InfoBanda(Bandas band[5]){
    for (size_t i = 0; i < 5; i++)
    {
        printf("\nDigite o nome da banda:");
        fgets(band[i].nome,20,stdin);
        band[i].nome[strcspn(band[i].nome,"\n")]='\0';
        setbuf(stdin,NULL);

        printf("\nDigite o estilo da banda:");
        fgets(band[i].estilo,20,stdin);
        band[i].estilo[strcspn(band[i].estilo,"\n")]='\0';
        setbuf(stdin,NULL);

        printf("\nQuantos integrantes ha nela:");
        scanf("%i",&band[i].integrantes);

        printf("\nQual posicao dessa bando no seu rank:");
        scanf("%i",&band[i].posicao);

        setbuf(stdin,NULL);
    } 

        for (size_t i = 0; i < 5; i++)
    {
        printf("\nNome:%s",band[i].nome);

        printf("\nEstilo:%s",band[i].estilo);

        printf("\nIntegrantes:%i",band[i].integrantes);       

        printf("\nRank:%i\n\n",band[i].posicao);    
    }

    return;
    
}

/** funçao onde o cliente escolhe a banda para ser mostrada */
void Busca(Bandas band[5],int pesquisa){

    printf("Digite um numero de 1 a 5:\n");
    scanf("%i",&pesquisa);

    for (size_t i = 0; i < 5; i++)
    {
        if(pesquisa == band[i].posicao){
        printf("\nNome:%s",band[i].nome);

        printf("\nEstilo:%s",band[i].estilo);

        printf("\nIntegrantes:%i",band[i].integrantes);       

        printf("\nRank:%i\n\n",band[i].posicao);  
        }
    }

    setbuf(stdin,NULL);

    return;
    
}

/** funçao onde mostra quais bandas toquem o estilo informado pelo cliente*/
void Estilo(Bandas band[5],char pesquisaEstilo[20]){

        printf("\nDigite o estilo da banda:");
        fgets(pesquisaEstilo,20,stdin);
        pesquisaEstilo[strcspn(pesquisaEstilo,"\n")]='\0';
        setbuf(stdin,NULL);

    for (size_t i = 0; i < 5; i++)
    {
        if(strcmp(band[i].estilo, pesquisaEstilo)==0){

        printf("\nBanda %s toca esse estilo",band[i].nome);

        }
    }

    return;
    
}

/** funçao onde mostra se a banda digitada pelo cliente esta na lista de favoritos */
void Favorita(Bandas band[5],char nomebanda[20],int cont){

        printf("\nDigite o nome da banda:");
        fgets(nomebanda,20,stdin);
        nomebanda[strcspn(nomebanda,"\n")]='\0';
        setbuf(stdin,NULL);

    for (size_t i = 0; i < 5; i++)
    {
        if(strcmp(band[i].nome, nomebanda)==0){

            printf("\nEsta na lista de favoritas");

            cont++;
        } 
        
    }
    if (cont = 0)
        {
            printf("\nNao esta na lista de favoritas");
        }

    return;
    
}

/** funçao principal */
int main(){

    int pesquisa;
    char pesquisaEstilo[20];
    char nomebanda[20];
    int cont;
    int op=0;
    int o=0;

    while (o == 0)
    {
        /** menu para escolher qual informaçao o cliente quer */
        printf("\n---------Menu---------\n");
        printf("1-Informacoes banda\n");
        printf("2-Buscar banda na lista\n");
        printf("3-Ver que banda tem o estilo da pesquisada\n");
        printf("4-Ver se a banda digitada esta na favorita\n");
        printf("5-Sair\n");
        printf("---------Menu---------\n\n\n");

        /** opçao que o cliente quer pesquisar */
        printf("Digite a opcao:");
        scanf("%i",&op);

        setbuf(stdin,NULL);
    
        /** chama estrutura */
        Bandas band[5];

        /** chama sitch*/
        switch (op)
        {
        case 1:
        /** chama funçao InfoBanda */
            InfoBanda(band);
            break;

        case 2:
        /** chama funçao Busca */
            Busca(band,pesquisa);
            break;

        case 3:
        /** chama funçao Estilo */
            Estilo(band,pesquisaEstilo);
            break;

        case 4:
        /** chama funçao Favorita */
            Favorita(band,nomebanda,cont);
            break;

        case 5:
        /** acabar o codigo */
            return 0;
            break;
    
        default:
            break;
    }
    
    }
       
    return 0;
    

}