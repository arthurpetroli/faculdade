/**
 * @file prova.c
 * @author Arthur Henrique de Oliveira Petroli (arthurpetroli@gmail.com)
 * @brief Na tarde de ontem, 06 de dezembro, alguns servidores da Amazon (AWS) pararam de funcionar.
Com isso, diversos serviços ficaram indisponíveis. Dentre eles, os servidores da Riot responsáveis pelos jogos League of Legends, Valorant e Wild Rift.
Você foi convocado pela Amazon em uma missão de emergência para ajudar a identificar os locais das falhas e reestabelecer os serviços.

Para isso, a central da Amazon está recebendo as notificações de falhas ao redor do mundo.
Você devera implementar um sistema para salvar e processar essas notificações. Para isso:

a) (5 pontos) Aloque dinamicamente um vetor de Notificações de tamanho 5. Cada Notificação contém:

Pais (string tam: 20):
Cidade(string tam: 20):
Quantidade de Servidores UP - ativos (inteiro)
Quantidade de Servidores Down - com problemas (inteiro)
Os países possíveis são: Brasil, EUA, Franca, Londres, China e Japao (sem acentos)

b) (10 pontos) Receba os dados de diversos relatórios de falhas e vá armazenando neste vetor.
A cada vez que o tamanho do vetor se tornar insuficiente, realoque seu tamanho aumentando o vetor em 5 unidades.
Ao receber o valor "fim" como entrada de um pais, o sistema de entradas deverá parar e o vetor tamanho do vetor ajustado ao tamanho exato da quantidade de relatórios.

c) (5 pontos) Salve os dados em um aquivo BINÁRIO chamado "notifications.dat". Feche o arquivo e libere a memória utilizada pelo vetor;

d) (5 pontos) Abra o arquivo gerado anteriormente, carregue os dados em um novo vetor de Relatórios alocado dinamicamente. E exiba os dados em uma tabela na tela.

e) (5 pontos) Calcule o total de servidores ativos, com problemas e o percentual de servidores com problemas em cada país.
Exiba os dados na tela e gere um arquivo MODO TEXTO chamado "report.txt" no seguinte formato:

PAIS     |UP   |DOWN | RATE|
Brasil   |   80|   30|  25%|
EUA      |  200|   50|  20%|
França   |   80|    5|   6%|
Londres  |  100|    0|   0%|
China    |  117|    3|   3%|
Japão    |   45|    0|   0%|

Obs:

Caso você tenha problemas com a alocação dinâmica dos itens A e B, faça um vetor estático de tamanho 10 e prossiga nos códigos,
você perderá os pontos dessa parte mas prosseguirá normalmente com o restante da nota da parte de arquivos.
Organize seu código indicando onde está fazendo cada item. Exemplo: //item A

 * @version 0.1
 * @date 2022-06-10
 * 
 * @copyright Copyright (c) 2022
 * 
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

typedef struct
{
    char pais[20];
    char cidade[20];
    int up;
    int down;
}notificacao;

int main(){
    FILE *prog;
    int i=0;
    int iaux=0;

    notificacao notificacoes = (notificacao) malloc(5 * sizeof(notificacao));

    do
    {
        printf("DIgite o nome do pais: ");
        fgets(notificacoes[i].pais,21,stdin);
        notificacoes[i].pais[strcspn(notificacoes[i].pais,"\n")] = '\0';
        setbuf(stdin, NULL);

        printf("Digite o nome da cidade: ");
        fgets(notificacoes[i].cidade,21,stdin);
        notificacoes[i].cidade[strcspn(notificacoes[i].cidade,"\n")] = '\0';
        setbuf(stdin, NULL);

        printf("Digite quantidade de servidores up: ");
        scanf("%i",&notificacoes[i].up);

        printf("Digite quantidade de servidores down: ");
        scanf("%f",&notificacoes[i].down);
        setbuf(stdin, NULL);
        
        i++;
        iaux++;

        if (iaux == 4)
        {
            notificacoes = realloc(notificacoes,i*sizeof(notificacao) + 5*sizeof(notificacao));
            iaux = 0;
        }
        
    } while (notificacoes[i].pais != "fim");
    
    notificacoes = realloc(notificacoes, i*sizeof(notificacao));
    
    prog = fopen("notifications.dat","wb");

    fwrite(&notificacoes,sizeof(notificacao),i,prog);

    fclose(prog);

    free(notificacoes);
}
