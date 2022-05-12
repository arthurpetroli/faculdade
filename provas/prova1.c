/*
@file: prova1.c
@author: Arthur Petroli
@date: 03 Nov 21
@brief: Prova 1 
*/
/*Você foi contratado pela Riot Games para elaborar partes do novo sistema do League of Legends.
Para isso exiba, uma única vez, um menu (5 pontos) com duas opções:

Seja bem vindo ao sistema League of Legends
a) Verifica nível (Tier)
b) Calculo do taxa de vitórias (winrate)

E peça a opção desejada ao usuário
*/

#include <stdio.h>
#include <stdlib.h>

int main(){
  int mmr;
  float winrate,derrotas,vitorias,partidas;
  char opcao,resultadoPartida;
  mmr=opcao=derrotas=vitorias=winrate=resultadoPartida=partidas=0;//variaveis zeradas para nao dar lixo
  

    //Menu do programa
   printf("Menu do programa:\n");
   printf("a) Verifica nivel (Tier)\n"); 
   printf("b) Calculo do taxa de vitorias (winrate)\n");
   printf("Digite sua opcao:\n");
   scanf("%c",&opcao);

   //casos
   switch (opcao){ 

    /*Na primeira opção, o programa deve receber a pontuação do MMR e informar
    em qual nível do jogador.
    Nível Bronze: MMR abaixo de 1090
    Nível Prata: MMR de 1090 a 1409
    Nível Ouro: MMR de 1410 a 1719
    Nível Platina: MMR de 1780 a 2019
    Nível Diamante: MMR de 2020 a 2500
    Nível Desafiante: MMR acima de 2500
    */

    case 'A' :
    case 'a' : 

        // MMR dado pelo usuario
        printf("Qual o seu MMR?:\n");
        scanf("%i",&mmr);

        // Caso o usuario digite numero negativo
        if(mmr < 0){
            printf("O mmr tem que ser maior que 0 para ser calculado\n");
        }

        // MMR do tier bronze
        else if(mmr < 1090){ 
            printf("Voce devera jogar no Tier Bronze!\n"); 
        }

        // MMR do tier prata
        else if(mmr >= 1090 && mmr <= 1409){
            printf("Voce devera jogar no Tier Prata!\n"); 
        }

        // MMR do tier ouro
        else if(mmr >= 1410 && mmr <= 1719){
            printf("Voce devera jogar no Tier Ouro!\n"); 
        }

        // MMR do tier platina
        else if(mmr >= 1720 && mmr <= 2019){
            printf("Voce devera jogar no Tier Platina!\n"); 
        }

        // MMR do tier diamante
        else if(mmr >= 2020 && mmr <= 2500){
            printf("Voce devera jogar no Tier Diamante!\n"); 
        }

        // MMR do tier desafiante
        else if(mmr > 2500){
            printf("Voce devera jogar no Tier Desafiante!\n"); 
        }
         
    break;

    /*O programa deve receber o resultado de várias partidas por meio da letra V para indicar vitória e D para derrota. A cada entrada o sistema deve exibir a taxa de vitórias 
    (winrate) com uma casa decimal, que é o porcentual de vitórias considerando todas as partidas recebidas até o momento, e em seguida deve solicitar uma nova entrada. 
    O sistema finalizar ao receber a letra F,situação na qual deve exibir: O total de partidas, total de vitórias, total de derrotas e o winrate final.
    */

    case 'B' :
    case 'b' :

         //enquanto maior que 0 continuar o codigo como queremos que ele continue ate digitar f foi colocada algo impossivel de finalizar 
        while(partidas >= 0){

           setbuf(stdin,NULL); // para limpar o buffer pois se nao o enter vai entrar no char do resultadoPartida
           printf("Digite o resultado da partida(V/D)\n");
           scanf("%c",&resultadoPartida);

         // if para finalizar o programa se digitar f 
         if(resultadoPartida == 'F' || resultadoPartida == 'f'){
             
            printf("Total de partidas %.0f!\n",vitorias + derrotas);
            printf("Total de vitorias %.0f!\n",vitorias);
            printf("Total de derrotas %.0f!\n",derrotas);
            printf("Winrate Final %.1f %%!!\n",winrate);
            printf("Final do programa!\n");
            return 0;
         }

         // else if para as vitorias e calcula o winrate com as vitorias e derrotas
         else if(resultadoPartida == 'V' || resultadoPartida == 'v'){
            vitorias++;
            partidas = vitorias + derrotas;
            winrate = (float)(vitorias/partidas) * 100;
            printf("Seu Winrate e de %.1f %%!\n",winrate);
         }

         // else if para as derrotas e calcula o winrate com as derrotas e vitorias
         else if(resultadoPartida == 'D' || resultadoPartida == 'd'){
            derrotas++;
            partidas = vitorias + derrotas;
            winrate = (float)(vitorias/partidas) * 100;
            printf("Seu Winrate e de %.1f %%!\n",winrate);

         // else usado para voltar erro se digitar letras fora as que o programa quer
         }else{
            printf("Erro!\n"); 
         }

        }

     break;   
 
     //default feito para voltar erro se digitado algo fora do switch
    default:
        printf("Erro\n");
    break;
   }

  return 0;
}