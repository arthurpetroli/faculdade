/**
 * @file 5_binarioRecursivo.c
 * @author João Vitor Levorato de Souza (joaosouza.2021@alunos.utfpr.edu.br)
 * @brief Crie uma estrutura representando um atleta. Essa estrutura deve conter o nome do atleta, seu esporte,
 * idade e altura. Agora, escreva um programa que leia os dados de cinco atletas. Calcule e exiba os nomes do atleta mais alto e do mais velho.
 * @version 0.1
 * @date 2022-03-30
 *
 * @copyright Copyright (c) 2022
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h> 

typedef struct{
    char nome[40];
    int quantidade;
    float preco;
}materiais;

void zerar(materiais material[15])
{
    for (size_t i = 0; i < 15; i++)
    {
        strcpy(material[i].nome,'\0');
        material[i].quantidade = 0;
        material[i].preco = 0;
    }
        
}

void i(materiais material[15])
{
    for (size_t i = 0; i < 15; i++)
    {
        if (material[i].nome)
        {
       printf("Insira o nome do material: ");
        fgets(material[0].nome,40,stdin);
        material[0].nome[strcspn(material[0].nome,"\n")] = '\0';
        setbuf(stdin, NULL);

        printf("Qual a quantidade: ");
        scanf("%i", &material[0].quantidade);

        printf("Qual o preco: ");
        scanf("%f", &material[0].preco);

        return ;   
        }
        else{

        }
    }
    
    
     
}

void r(materiais material[15],int indice)
{
   printf("Indique o indice do material que quer remover: ");
   scanf("%i",&indice);

   strcpy(material[indice].nome,'\0');
   material[indice].quantidade = 0;
   material[indice].preco = 0;
}

void l(materiais material[15])
{       
    for (size_t i = 0; i < 15; i++)
    {
        if (strcasecmp(material[i].nome,'\0')!=0)
        {
            printf("%s\n",material[i].nome);
            printf("%i\n",material[i].quantidade);
            printf("%f\n",material[i].preco);
        }
           
    }
    
}

void p(materiais material[15],char pesquisa[40])
{
   for (size_t i = 0; i < 15; i++)
   {
       if(strcasecmp(pesquisa,material[i].nome)==0){
           printf("%i\n",material[i].quantidade);
           printf("%f\n",material[i].preco);
       }
   }
   
}

void v(materiais material[15])
{
   for (size_t i = 0; i < 15; i++)
   {
       if(material[i].quantidade == 0){
           printf("%s\n",material[i].nome);
           printf("%i\n",material[i].quantidade);
           printf("%f\n",material[i].preco);
       }
   }
}



int main()
{
    char digito;
    materiais material[15];
    int indice;
    char pesquisa[40];
    int cu=0;


    while(cu==0)
    {
        printf("----------------------------------------MENU----------------------------------------\n");
        printf("Ao digitar (I), deve-se realizar insercao de um material na primeira posicao que estiver livre\n");
        printf("Ao digitar (R), deve-se remover o material pelo indice (a ser fornecido pelo usuario )\n");
        printf("Ao digitar (L), deve-se listar todos os cadastros nao vazios\n");
        printf("Ao digitar (P), deve-se solicitar o nome de um material e exibir a quantidade e o preco\n");
        printf("Ao digitar (V), deve-se listar todos os produtos que tenham a quantidade igual a 0\n");
        printf("Ao digitar (S), deve sair do programa\n");
        printf("----------------------------------------MENU----------------------------------------\n");


        printf("Digite a opcao desejada:\n ");
        scanf("%c",&digito);

        setbuf(stdin, NULL);

        switch (digito)
    {
    case 'i':
        i(material);
        break;

    case 'r':
        r(material,indice);
        break;

    case 'l':
        l(material);
        break;

    case 'p':
        printf("Digite o nome que deseja procurar: ");
        fgets(pesquisa,40,stdin);
        pesquisa[strcspn(pesquisa,"\n")] = '\0';
        setbuf(stdin, NULL);

        p(material,pesquisa);
        break;

    case 'v':
        v(material);
        break;

    case 's':
        return 0;
        break;
    
    default:
        break;
    }
   
    }

}


    