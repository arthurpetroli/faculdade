/**
 * @file trabalholista.c
 * @author Arthur Henrique De Oliveira Petroli (arthurpetroli@gmail.com) RA: 2408732
 * @author Dimitri Pereira Maia (dimitrimaia@aluno.utfpr.edu.br) RA: 2419840
 * @brief 
 * @version 0.1
 * @date 2022-10-22
 * 
 * @copyright Copyright (c) 2022
 * 
*/
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <stdbool.h>

// struct que armazena o conteudo de cada paciente
typedef struct Obj
{
    char nome[100];
    char sexo;
    char data_nascimento[15];
    char data_consulta[15];
} Objeto;

// struct que simbolia um no de cada parte da lista esse no aponta para o prox no
typedef struct no
{
    Objeto dados_paciente;
    struct no *prox;
    struct no *ant;
} NoLista;

// struct lista encadeada possui um ponteiro que aponta para o inicio da lista para não perdemos o ponteiro
// da lista ao pecorremos ela
typedef struct listaEncadeada
{
    NoLista *inicio;
    int numElemeto;
} Lista;

void inicializarLista(Lista *l)
{
    l->inicio = NULL;
    l->numElemeto = 0;
} // inicializa o inicio da lista e a sua quantidade de elem

bool estaVazia(Lista *l)
{
    return (l->numElemeto == 0);
} // função que retorna um inteiro se a lista estiver vazia

int tamanhoLista(Lista *l)
{
    return (l->numElemeto);
} // função que retorna o tamanho da lista

NoLista *novoElem(Objeto aux)
{
    NoLista *novo;
    novo = (NoLista *)malloc(sizeof(NoLista));
    novo->dados_paciente = aux;
    novo->prox = NULL;
    novo->ant = NULL;
    return novo;
} // cia um No separado para seer colocado na lista

void insereElemento(Lista *lM, Lista *lF, Objeto n)
{
    NoLista *No_novo = novoElem(n);
    if (No_novo->dados_paciente.sexo == 'M')
    {
        NoLista *aux = lM->inicio;
        if (lM->inicio == NULL)
        {
            lM->inicio = No_novo;
        } // if
        else
        {
            while (aux->prox != NULL && strcmp(aux->dados_paciente.nome, n.nome) > 0)
            {
                aux = aux->prox;
            } // while
            if (strcmp(aux->dados_paciente.nome, n.nome) > 0)
            {
                aux->prox = No_novo;
                No_novo->ant = aux;
            } // if
            else
            {
                if (aux->ant == NULL)
                {
                    No_novo->prox = aux;
                    aux->ant = No_novo;
                    lM->inicio = No_novo;
                } // if
                else
                {
                    No_novo->prox = aux;
                    No_novo->ant = aux->ant;
                    aux->ant->prox = No_novo;
                    aux->ant = No_novo;
                } // if
            }     // else
        }         // else
        lM->numElemeto++;
    } // if
    if (No_novo->dados_paciente.sexo == 'F')
    {
        NoLista *aux = lF->inicio;
        if (lF->inicio == NULL)
        {
            lF->inicio = No_novo;
        } // if
        else
        {
            while (aux->prox != NULL && strcmp(aux->dados_paciente.nome, n.nome) < 0)
            {
                aux = aux->prox;
            } // while
            if (strcmp(aux->dados_paciente.nome, n.nome) < 0)
            {
                aux->prox = No_novo;
                No_novo->ant = aux;
            } // if
            else
            {
                if (aux->ant == NULL)
                {
                    No_novo->prox = aux;
                    aux->ant = No_novo;
                    lF->inicio = No_novo;
                } // if
                else
                {
                    No_novo->prox = aux;
                    No_novo->ant = aux->ant;
                    aux->ant->prox = No_novo;
                    aux->ant = No_novo;
                } // if
            }     // else
        }         // else
        lF->numElemeto++;
    } // if
} // função

void imprimeLista(Lista *l)
{
    NoLista *aux = l->inicio;
    printf("\n==============Inicio Fila==================");
    while (aux != NULL)
    {
        printf("\n<%s, %c, %s, %s>", aux->dados_paciente.nome, aux->dados_paciente.sexo, aux->dados_paciente.data_nascimento, aux->dados_paciente.data_consulta);
        aux = aux->prox;
    } // while
    printf("\n==============Fim Fila==================\n");
}

void destroiLista(Lista *l)
{
    NoLista *aux = l->inicio;
    while (l->inicio != NULL)
    {
        l->inicio = l->inicio->prox;
        free(aux);
        aux = l->inicio;
        l->numElemeto--;
    } // while
} // função que destroi a lista para não ocupar memoria

diferencaData(int dia3, int mes3, int ano3, int dia2, int mes2, int ano2)
{ // função que calcula a diferença de dias entre duas datas
    int diferenca;
    diferenca = ((ano2 - ano3) * 365) + ((mes2 - mes3) * 30) + (dia2 - dia3);
    return diferenca;
}

int main(int argc, char *argv[])
{
    FILE *arq1;
    FILE *arq2;
    FILE *arq3;
    Lista listaM, listaF;
    Objeto n;
    char aux[100];
    int opcao;
    int dia1, mes1, ano1 = 0; // data atual
    int dia2, mes2, ano2 = 0; // data de nascimento
    int dia3, mes3, ano3 = 0; // data de consulta

    arq1 = fopen(argv[1], "r"); // abrindo o arquivo de entrada
    if (arq1 == NULL)
    {
        printf("\nProblemas na abertura do arquivo\n"); // verificando se o arquivo foi aberto
    }                                                   // if
    inicializarLista(&listaM);                          // inicializando a listaMasculina
    inicializarLista(&listaF);                          // inicializando a listaFeminina
    while (fgets(aux, 100, arq1) != NULL)
    {                                                                                                        // le 1 linha do arquivo e ve se ja chegou ate o final                                                                                                                              //enquanto nao chegar no final ira pegar as inforamçoes do arquivo e as formatara e salvara em saida.txt
        sscanf(aux, "<%[^,], %[^,], %[^,], %[^>]>", &n.nome, &n.sexo, &n.data_nascimento, &n.data_consulta); // formatando as informações do arquivo
        insereElemento(&listaM, &listaF, n);                                                                 // inserindo os elementos na lista
    }                                                                                                        // while

    while (true)
    {
        printf("Digite uma opção caso queira:\n");      // menu de opções
        printf("1 - Inserir novo paciente.\n");         // opção 1
        printf("2 - Pesquisa.\n");                      // opção 2
        printf("3 - Terminar para mostrar a lista.\n"); // opção 3
        scanf("%d", &opcao);                            // lendo a opção
        setbuf(stdin, NULL);

        switch (opcao) // switch para as opções
        {
        case 1: // opção 1
            printf("Digite o nome completo do paciente: ");
            scanf("%[^\n]", n.nome); // lendo o nome do paciente novo
            setbuf(stdin, NULL);
            printf("Digite o sexo do paciente: ");
            scanf("%s", &n.sexo); // lendo o sexo do paciente novo
            setbuf(stdin, NULL);
            printf("Digite a data de nascimento do paciente: ");
            scanf("%s", n.data_nascimento); // lendo a data de nascimento do paciente novo
            printf("Digite a data da consulta do paciente:");
            scanf("%s", n.data_consulta); // lendo a data da consulta do paciente novo
            setbuf(stdin, NULL);
            insereElemento(&listaM, &listaF, n); // inserindo o paciente novo na lista
            system("clear");
            break;

        case 2: // opção 2
            printf("Digite o nome do paciente que deseja pesquisar: ");
            scanf("%[^\n]", n.nome); // lendo o nome do paciente que deseja pesquisar
            setbuf(stdin, NULL);
            printf("Digite o sexo do paciente: ");
            scanf("%s", &n.sexo); // lendo o sexo do paciente que deseja pesquisar
            setbuf(stdin, NULL);
            if (n.sexo == 'M')
            {                                 // verificando se o sexo é masculino
                NoLista *aux = listaM.inicio; // auxiliar para percorrer a lista
                while (aux != NULL && strcmp(aux->dados_paciente.nome, n.nome) != 0)
                {                    // enquanto o auxiliar for diferente de nulo e o nome do paciente for diferente do nome que deseja pesquisar
                    aux = aux->prox; // auxiliar recebe o proximo
                }                    // while
                if (aux == NULL)
                { // se o auxiliar for nulo
                    printf("Paciente não encontrado!\n");
                } // if
                else
                { // se o auxiliar for diferente de nulo
                    printf("Paciente encontrado!\n");
                    printf("Data de nascimento: %s\n", aux->dados_paciente.data_nascimento);
                    printf("Data da consulta: %s\n", aux->dados_paciente.data_consulta);
                    sscanf(aux->dados_paciente.data_nascimento, " %d/%d/%d,", &dia1, &mes1, &ano1); // formatando a data de nascimento passando para inteiro
                    printf("Digite a data de hoje\n");
                    printf("Dia: ");
                    scanf("%d", &dia2); // lendo o dia atual
                    printf("Mes: ");
                    scanf("%d", &mes2); // lendo o mes atual
                    printf("Ano: ");
                    scanf("%d", &ano2); // lendo o ano atual

                    // feita para ver quantos anos o paciente tem
                    if (ano2 > ano1)
                    { // verificando se o ano atual é maior que o ano de nascimento
                        printf("O paciente tem %d anos\n", ano2 - ano1);
                    } // if
                    else
                    {
                        if (ano2 == ano1)
                        { // verificando se o ano atual é igual ao ano de nascimento
                            if (mes2 > mes1)
                            { // verificando se o mes atual é maior que o mes de nascimento
                                printf("O paciente tem %d anos\n", ano2 - ano1);
                            } // if
                            else
                            {
                                if (mes2 == mes1)
                                { // verificando se o mes atual é igual ao mes de nascimento
                                    if (dia2 > dia1)
                                    { // verificando se o dia atual é maior que o dia de nascimento
                                        printf("O paciente tem %d anos\n", ano2 - ano1);
                                    } // if
                                    else
                                    {
                                        if (dia2 == dia1)
                                        { // verificando se o dia atual é igual ao dia de nascimento
                                            printf("O paciente tem %d anos\n", ano2 - ano1);
                                        } // if
                                        else
                                        { // se o dia atual for menor que o dia de nascimento
                                            printf("O paciente tem %d anos\n", ano2 - ano1 - 1);
                                        } // else
                                    }     // else
                                }         // if
                                else
                                { // se o mes atual for menor que o mes de nascimento
                                    printf("O paciente tem %d anos\n", ano2 - ano1 - 1);
                                } // else
                            }     // else
                        }         // if
                        else
                        { // se o ano atual for menor que o ano de nascimento
                            printf("O paciente tem %d anos\n", ano2 - ano1 - 1);
                        } // else
                    }     // else
                    system("clear");
                    sscanf(aux->dados_paciente.data_consulta, " %d/%d/%d>", &dia3, &mes3, &ano3);                   // formatando a data da consulta passando para inteiro
                    printf("A ultima consulta foi a %d dias\n", diferencaData(dia3, mes3, ano3, dia2, mes2, ano2)); // chamando a função diferencaData para calcular a diferença de dias entre a data da consulta e a data atual
                }                                                                                                   // else
            }                                                                                                       // if
            break;

        case 3:
            system("clear");
            arq2 = fopen(argv[2], "w");
            if (arq2 == NULL)
            {
                printf("\nProblemas na abertura do arquivo\n");
            }                                                        // if
            for (NoLista *i = listaM.inicio; i != NULL; i = i->prox) // imprimindo no arquivo
            {
                fprintf(arq2, "<%s, %c, %s, %s>\n", i->dados_paciente.nome, i->dados_paciente.sexo, i->dados_paciente.data_nascimento, i->dados_paciente.data_consulta); // imprimindo no arquivo
            }

            arq3 = fopen(argv[3], "w");
            if (arq3 == NULL)
            {
                printf("\nProblemas na abertura do arquivo\n");
            }                                                        // if
            for (NoLista *i = listaF.inicio; i != NULL; i = i->prox) // imprimindo no arquivo
            {
                fprintf(arq3, "<%s, %c, %s, %s>\n", i->dados_paciente.nome, i->dados_paciente.sexo, i->dados_paciente.data_nascimento, i->dados_paciente.data_consulta); // imprimindo no arquivo
            }

            fclose(arq2); // fechando o arquivo
            fclose(arq3); // fechando o arquivo

            imprimeLista(&listaM); // imprimindo a lista de homens
            imprimeLista(&listaF); // imprimindo a lista de mulheres
            destroiLista(&listaM); // destruindo a lista de homens
            destroiLista(&listaF); // destruindo a lista de mulheres
            exit(0);
            break;

        default:
            break;
        }
    }
    return EXIT_SUCCESS;
}
