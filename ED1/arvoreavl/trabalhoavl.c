/**
 * @file trabalhoavl.c
 * @author Arthur Henrique de Oliveira Petroli (arthurpetroli@gmail.com) RA: 2408732 /// Gabriel Reis Macedo (gabrielreismacedo@alunos.utfpr.edu.br) RA: 2408775
 * @brief  Trabalho de Arvore AVL - Estrutura de Dados 1
 * Um  ́ındice remissivo lista os termos (e topicos) que aparecem em um determinado documento (normal-
    mente, em livros), conjuntamente com a(s) pagina(s) em que estes aparecem. O arquivo remissivo.xlsx
    guarda o termo em sua primeira coluna e a respectiva pagina na segunda coluna; estes termos aparecem
    em um determinado livro de pedagogia. Para que o livro seja colocado a venda em meios digitais, pede-se
    que o programador implemente as quatro opcoes listadas abaixo, utilizando Arvore AVL como estrutura
    de dados para organizar alfabeticamente os termos. Assim, o leitor poder ́a ter ́a uma previa do conte ́udo
    a ser abordado no livro a ser comprado.

    O programa tambem devera oferecer quatro opçoes:
    1.) usuario/bibliotecario pode adicionar um novo termo e sua respectiva pagina, nao contido na base de
    dados antiga,
    2.) realizar a pesquisa por termo, devolvendo a pagina onde este se encontra;
    3.) mostrar todos os termos e suas respectivas paginas em ordem alfabetica (A-Z);
    4.) encerrar a execucao quando solicitado pelo usuario.
 * @version 0.1
 * @date 2022-11-27
 *
 * @copyright Copyright (c) 2022
 *
*/

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdbool.h>
#include <time.h>

typedef struct
{
    char palavra[40]; // palavra a ser inserida
    int paginas;      // numero da pagina onde a palavra aparece a palavra
} Objeto;

typedef struct noArvore
{
    Objeto chave;         // chave do no
    struct noArvore *dir; // ponteiro para o filho a direita
    struct noArvore *esq; // ponteiro para o filho a esquerda
    int alt;              // altura do no
} NoArvore;

NoArvore *inicializaArvore()
{ // inicializa a arvore
    return NULL;
}

bool estaVazia(NoArvore **no)
{ // verifica se a arvore esta vazia
    return ((*no) == NULL);
}

int maxAltFilho(NoArvore **no)
{
    if ((*no)->esq == NULL && (*no)->dir == NULL)
        return (-1); // se nao tiver filhos
    else if ((*no)->esq == NULL)
        return ((*no)->dir->alt); // se nao tiver filho a esquerda
    else if ((*no)->dir == NULL)
        return ((*no)->esq->alt);                                                   // se nao tiver filho a direita
    return ((*no)->dir->alt > (*no)->esq->alt ? (*no)->dir->alt : (*no)->esq->alt); // retorna a maior altura
}

void rotacaoEsq(NoArvore **no)
{ // rotacao a esquerda
    NoArvore *aux = NULL;
    aux = (*no)->dir;
    (*no)->dir = aux->esq;
    aux->esq = (*no);
    (*no) = aux;
    (*no)->esq->alt = maxAltFilho(&(*no)->esq) + 1;
    // (*no)->dir->alt = maxAltFilho(&(*no)->dir) + 1;
    (*no)->alt = maxAltFilho(no) + 1;
}

void rotacaoDir(NoArvore **no)
{ // rotacao a direita
    NoArvore *aux = (*no)->esq;
    (*no)->esq = aux->dir;
    aux->dir = (*no);
    (*no) = aux;
    // (*no)->esq->alt = maxAltFilho(&(*no)->esq) + 1;
    (*no)->dir->alt = maxAltFilho(&(*no)->dir) + 1;
    (*no)->alt = maxAltFilho(no) + 1;
}

int altura(NoArvore **no)
{ // retorna a altura do no
    if ((*no) == NULL)
        return -1;
    return ((*no)->alt);
}

void insereArvore(NoArvore **no, Objeto n)
{ // insere um no na arvore
    if ((*no) == NULL)
    {                                                 // se a arvore estiver vazia
        (*no) = (NoArvore *)malloc(sizeof(NoArvore)); // aloca memoria para o no
        (*no)->chave = n;                             // insere a chave
        (*no)->dir = (*no)->esq = NULL;               // inicializa os filhos
        (*no)->alt = 0;                               // inicializa a altura
        return;
    }

    if (strcmp((*no)->chave.palavra, n.palavra) == 0) // se a palavra ja estiver na arvore
    {
        printf("\nElemento repetido"); // se a palavra ja estiver na arvore
        return;
    }

    strcmp((*no)->chave.palavra, n.palavra) > 0 ? insereArvore(&((*no)->esq), n) : insereArvore(&((*no)->dir), n); // insere na subarvore esquerda ou direita dependendo da comparacao conforme a ordem alfabetica
    (*no)->alt = maxAltFilho(no) + 1;                                                                              // atualiza a altura do no

    if (altura(&(*no)->dir) - altura(&(*no)->esq) == 2)
    {                                                                // verifica se a arvore esta desbalanceada
        if (altura(&(*no)->dir->dir) - altura(&(*no)->dir->esq) < 0) // verifica se a arvore esta desbalanceada
            rotacaoDir(&(*no)->dir);                                 // se o filho a direita tiver altura menor que o filho a esquerda
        rotacaoEsq(no);                                              // rotacao a esquerda
    }
    else if (altura(&(*no)->dir) - altura(&(*no)->esq) == -2)
    {                                                                // se o filho a esquerda tiver altura menor que o filho a direita
        if (altura(&(*no)->esq->dir) - altura(&(*no)->esq->esq) > 0) // verifica se a arvore esta desbalanceada
            rotacaoEsq(&(*no)->esq);                                 // rotacao a esquerda
        rotacaoDir(no);
    }
}

void imprimeEmOrdem(NoArvore **no)
{ // imprime a arvore em ordem alfabetica
    if (*no == NULL)
        return;
    imprimeEmOrdem(&((*no)->esq));                                    // imprime a subarvore esquerda
    printf("%s    %d\n", (*no)->chave.palavra, (*no)->chave.paginas); // imprime a chave
    imprimeEmOrdem(&((*no)->dir));                                    // imprime a subarvore direita
}

NoArvore *buscaElem(NoArvore **no, Objeto n, char pesquisa[40])
{ // busca um elemento na arvore
    if (*no == NULL)
        return NULL;
    if (strcmp((*no)->chave.palavra, pesquisa) == 0) // se a palavra for igual a palavra pesquisada
        return (*no);                                // se a palavra for encontrada
    if (strcmp((*no)->chave.palavra, pesquisa) > 0)
        return buscaElem(&(*no)->esq, n, pesquisa); // se a palavra for menor que a chave, busca na subarvore esquerda
    else
        return buscaElem(&(*no)->dir, n, pesquisa); // se a palavra for maior que a chave, busca na subarvore direita
}

void destroiArvore(NoArvore **no)
{
    if ((*no) == NULL)
        return;
    destroiArvore(&((*no)->esq)); // destroi a subarvore esquerda
    destroiArvore(&((*no)->dir)); // destroi a subarvore direita
    free(*no);                    // destroi o no
    (*no) = NULL;                 // aponta para NULL
}

int main(int argc, char *argv[])
{
    FILE *arq; // ponteiro para o arquivo de entrada remissivo.txt
    Objeto n;  // objeto que sera inserido na arvore
    char palavra[40], pesquisa[40];
    int paginas;
    int opcao; // variavel para o menu

    arq = fopen(argv[1], "r"); // abrindo o arquivo de entrada
    if (arq == NULL)           // Se houve erro na abertura
    {
        printf("\nProblemas na abertura do arquivo\n");
    }

    NoArvore *raiz = inicializaArvore();                             // inicializa a arvore
    while (fscanf(arq, "%s \t %d\n", &n.palavra, &n.paginas) != EOF) // Lê até o final do arquivo
    {
        insereArvore(&raiz, n); // insere na arvore
    }

    printf("\n\n-------------MENU-------------\n\n"); // menu
    printf("1 - Digitar nova palavra\n");
    printf("2 - Pesquisar palavra\n");
    printf("3 - Mostrar termos\n");
    printf("4 - Sair\n");
    printf("\n\n--------------------------------\n\n"); // fim menu

    while (true)
    {
        printf("\n\n-------------MENU-------------\n\n"); // menu
        printf("1 - Digitar nova palavra\n");
        printf("2 - Pesquisar palavra\n");
        printf("3 - Mostrar termos\n");
        printf("4 - Sair\n");
        printf("\n\n--------------------------------\n\n"); // fim menu

        printf("\nDigite a opcao desejada: "); // escolhe a opcao
        scanf("%d", &opcao);                   // le a opcao

        switch (opcao) // escolhe a opcao
        {
        case 1:
            printf("\nDigite a palavra que deseja adicionar(Digite com a primeira letra maiuscula): "); // digita a palavra
            scanf("%s", &n.palavra);
            printf("\nDigite a pagina da palavra: "); // digita a pagina
            scanf("%d", &n.paginas);

            insereArvore(&raiz, n); // insere na arvore a palavra e a pagina digitada

            system("clear");

            break;

        case 2:
            printf("\nDigite a palavra que deseja pesquisar(com a primeira letra maiuscula): "); // digita a palavra
            scanf("%s", &pesquisa);                                                              // le a palavra
            if (buscaElem(&raiz, n, pesquisa) == NULL)
            { // se a palavra nao for encontrada
                printf("\nPalavra nao encontrada");
            }
            else
            {                                                                                              // se a palavra for encontrada
                printf("\nPalavra encontrada na pagina %d", buscaElem(&raiz, n, pesquisa)->chave.paginas); // imprime a pagina da palavra digitada
            }
            system("clear");
            break;

        case 3:
            system("clear");
            printf("\n-----------------INICIO------------------\n\n"); // imprime a arvore em ordem alfabetica
            imprimeEmOrdem(&raiz);
            printf("\n-----------------FIM------------------\n"); // fim
            break;

        case 4:
            destroiArvore(&raiz); // destroi a arvore
            fclose(arq);          // fecha o arquivo
            exit(0);              // sai do programa
            break;

        default:
            break;
        }
    }
}