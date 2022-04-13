/*
@file: prova2.c
@author: Arthur Petroli
@date: 08 Dec 21
@brief: Prova 2

Para isso, faça um programa que armazene os dados de 5 cidades onde estão localizados os servidores com problemas, cada cidade possui: nome (20 caracteres), 
quantidade de servidores ativos(inteiro), quantidade de servidores com problemas (inteiro) e quantidade total de servidores(inteiro).
*/

#include <stdlib.h>
#include <stdio.h>

int main(){

    char cidades[5][20];
    int x,cont=0,xMaior;
    int matriz[5][3];
    char busca[20];
    float maior,porcentagem;


//a) Faça um programa que receba os dados das 5 cidades: nome(strings), a quantidade de servidores ativos e a quantidade de servidores com falha
//( salvos nas duas primeiras colunas de uma matriz de inteiros 5x3). Os valores não podem ser negativos, solicite novos valores enquanto o usuário digite valores inválidos.
    for(x=0; x < 5; x++){

        //recebe os nomes das cidades
        printf("Digite nome da cidade: ");
        fgets(cidades[x],20,stdin);
        cidades[x][strcspn(cidades[x],"\n")]='\0';
        setbuf(stdin,NULL);

        //pede servidores ativos
        printf("Quantidade de servidores ativos: ");
        scanf("%i",&matriz[x][0]);
        
        //verifica se o servidor ativo e valido
        while(matriz[x][0] < 0) {
            printf("Digite um numero valido! ");
            scanf("%i", &matriz[x][0]);
            setbuf(stdin,NULL);
        }   
        
        //pede servidores falhos
        printf("Quantidade de servidores com falhas: ");
        scanf("%i",&matriz[x][1]);
        
        //verifica se o servidor ativo e valido
        while(matriz[x][1] < 0) {
            printf("Digite um numero valido! ");
            scanf("%i", &matriz[x][1]);
            setbuf(stdin,NULL);
        }

        setbuf(stdin,NULL);
    }

//b) Utilizando estruturas de repetição, calcule a quantidade total de servidores em cada cidade e salve na última coluna da matriz;
    //calcula servidores totais
    for(x=0; x < 5; x++){
        matriz[x][2] = matriz[x][0] + matriz[x][1];
    }

//c) Exiba em formato de tabela (com colunas alinhas separadas por | ) os nomes, as 3 quantidades de servidores de todos as cidades.
    //exibe a cidade e as caracteristicas referente aos servidores dela
    printf("\n");
    for(x=0; x < 5; x++){
       printf("%-15s",cidades[x]);
       printf("|");
       printf("%-3i",matriz[x][0]);
       printf("|");
       printf("%-3i",matriz[x][1]);
       printf("|");
       printf("%-3i",matriz[x][2]);
       printf("\n");
    }

//d) Receba um nome de uma cidade e busque ela na lista, todos os dados de seus servidores (apenas 1 vez). Exiba uma mensagem informando também caso não encontre o nome buscado.   
    //pede uma busca
    printf("\nBusca: ");
    fgets(busca,20,stdin);
    busca[strcspn(busca,"\n")]='\0';
    setbuf(stdin,NULL);
    
    //compara e ve se a busca se iguala a alguma cidade ou nao
    for(x=0; x < 5; x++){
        if(strcmp(busca,cidades[x]) == 0){
            printf("%-15s",cidades[x]);
            printf("|");
            printf("%-3i",matriz[x][0]);
            printf("|"); 
            printf("%-3i",matriz[x][1]);
            printf("|");
            printf("%-3i",matriz[x][2]);
            cont = 1;
            
        }
        if(cont = 0){
            printf("O nome buscado nao foi encontrado ");
        }
    }

    setbuf(stdin,NULL);
    printf("\n\n");

//e) Exiba o nome da cidade e a porcentagem da cidade que tem o maior percentual de servidores com problemas (duas casas decimais).
    //calcula qual a cidade tem a maior porcentagem de servidores falhos     
   for(x=0; x < 5; x++){
       porcentagem = (100 * matriz[x][1])/matriz[x][2];
        if(maior < porcentagem){
           maior = porcentagem;
           xMaior = x;
        }
    }

    //exibe a cidad eque tem a maior porcentagem de servidores falhos
    printf("Cidade com maior porcentagem de servidores com falhas: %s\n",cidades[xMaior]);
    printf("Porcentagem de falha %.2f %% ",(float)maior);

    printf("\n\n");

    setbuf(stdin,NULL);

//f) Utilizando estrutura de repetição, calcule e exiba o percentual total de servidores ativos e de servidores com problemas.
    //calcula a porcentagem de servidores falhos e servidores ativos das cidades
    for(x=0; x < 5; x++){
        printf("%-10s",cidades[x]);
        printf("|"); 
        printf("%-2i %%",(100 * matriz[x][0])/matriz[x][2]);
        printf("|"); 
        printf("%-2i %%",(100 * matriz[x][1])/matriz[x][2]);
        printf("\n");
    }

    return 0;
}

//A questao G foi retirada