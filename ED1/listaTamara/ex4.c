#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct {
    char valor;
    char naipe;
    bool foiJogada;
} Carta;

typedef struct {
    Carta array[54];
} Baralho;

void criaBaralho(baralho *baralhos){
    for (size_t i = 0; i < 54; i++)
    {
        printf("Digite o valor que deseja [%i]: ",i);
        scanf("%s",&baralhos*array[i].valor);
        printf("Digite o naipe que deseja [%i]: ",i);
        scanf("%s",&baralhos*array[i].naipe);
        printf("Digite se a carta ja foi jogada [%i] (nao=0 or sim=1): ",i);
        scanf("%i",&baralhos*array[i].foiJogada);
        if (baralhos*array[i].foiJogada = 1)
        {
            baralhos*array[i].foiJogada = true;
        }else{
            baralhos*array[i].foiJogada = false;
        }
    }
}

int cartasNaoJogadas(Baralho *baralho){
    int cont = 0;
    for (size_t i = 0; i < 54; i++)
    {
        if (baralho*array[i].foiJogada == false)
        {
            cont++;
        }
    }
    return cont;
}

int main(){
    Baralho baralhos;

    criaBaralho(baralhos);

    cartasNaoJogadas(Baralho *baralho);
    
    Carta topo(Baralho *baralho);

    Carta fundo(Baralho *baralho);

    Carta* carteado(Baralho *baralho);
}