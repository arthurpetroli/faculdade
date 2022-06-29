/**
 * @file Menu.c
 * @author Arthur Henrique de Oliveira Petroli (arthurpetroli@gmail.com) and Matheus Mazali Maeda (matheusmazalimaeda@alunos.utfpr.edu.br)
 * @brief menu trabalho
 * @version 0.1
 * @date 2022-06-20
 *
 * @copyright Copyright (c) 2022
 *
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "franquias.h"
#include "menu.h"
#include "usuario.h"
#include "lanches.h"

void cabecalho() // Imprime o cabeçalho do menu
{
    Limpar();                                                                            // Limpa a tela
    printf("----------- SISTEMA INTEGRADO DE GERENCIAMENTO DE FRANQUIAS -----------\n"); // Imprime o cabeçalho do menu
} // Fim da função
// Lanches
void adicionarLanche(Franquia *Franquias, int *quantidadeFranquiasArquivo, Lanche *Lanches, int *quantidadeLanchesArquivo) // Adiciona um lanche ao arquivo
{
    Lanche lancheModeloCadastrar, lancheCadastro, Lixo;                                                                                                                                               // Declaração de variáveis
    int Entrada, lanchesRemovidos = 0, lancheRemovidoIndice, *idFranquiaCadastrar = calloc(100, sizeof(int)), quantidadeFranquiasReceberaLanche = 0, quantidadeFranquiasReceberaLancheAux = 0, jaTem; // Declaração de variáveis
    printf("----------- SISTEMA INTEGRADO DE GERENCIAMENTO DE FRANQUIAS -----------\n");                                                                                                              // Imprime o cabeçalho do menu
    setbuf(stdin, NULL);                                                                                                                                                                              // Limpa o buffer do teclado
    printf("Insira o nome do lanche: ");                                                                                                                                                              // Imprime a mensagem na tela
    fgets(lancheModeloCadastrar.nomeLanche, 50, stdin);                                                                                                                                               // Lê o nome do lanche
    lancheModeloCadastrar.nomeLanche[strcspn(lancheModeloCadastrar.nomeLanche, "\n")] = '\0';                                                                                                         // Remove o \n do nome do lanche
    setbuf(stdin, NULL);                                                                                                                                                                              // Limpa o buffer do teclado
    cabecalho();                                                                                                                                                                                      // Imprime o cabeçalho do menu
    printf("Insira a descricao do lanche: ");                                                                                                                                                         // Imprime a mensagem na tela
    fgets(lancheModeloCadastrar.descricaoDoLanche, 150, stdin);                                                                                                                                       // Lê a descrição do lanche
    lancheModeloCadastrar.descricaoDoLanche[strcspn(lancheModeloCadastrar.descricaoDoLanche, "\n")] = '\0';                                                                                           // Remove o \n da descrição do lanche
    setbuf(stdin, NULL);                                                                                                                                                                              // Limpa o buffer do teclado
    cabecalho();                                                                                                                                                                                      // Imprime o cabeçalho do menu
    printf("Insira o custo de producao desse lanche: ");                                                                                                                                              // Imprime a mensagem na tela
    scanf("%f", &lancheModeloCadastrar.custoProducao);                                                                                                                                                // Lê o custo de produção do lanche
    setbuf(stdin, NULL);                                                                                                                                                                              // Limpa o buffer do teclado
    cabecalho();                                                                                                                                                                                      // Imprime o cabeçalho do menu
    printf("Insira o valor que esse lanche sera vendido: ");                                                                                                                                          // Imprime a mensagem na tela
    scanf("%f", &lancheModeloCadastrar.valorLanche);                                                                                                                                                  // Lê o valor do lanche
    setbuf(stdin, NULL);                                                                                                                                                                              // Limpa o buffer do teclado
    cabecalho();                                                                                                                                                                                      // Imprime o cabeçalho do menu
    printf("Insira a quantidade de calorias desse lanche: ");                                                                                                                                         // Imprime a mensagem na tela
    scanf("%i", &lancheModeloCadastrar.calorias);                                                                                                                                                     // Lê a quantidade de calorias do lanche
    setbuf(stdin, NULL);                                                                                                                                                                              // Limpa o buffer do teclado
    cabecalho();                                                                                                                                                                                      // Imprime o cabeçalho do menu
    do                                                                                                                                                                                                // Repete o código enquanto o usuário não digitar um id válido
    {
        printf("Qual o tipo deste lanche: \n[1] - Vegetariano\n[2] - Com carne\n\nEntrada de dados: "); // Imprime a mensagem na tela
        setbuf(stdin, NULL); // Limpa buffer 
        scanf("%i", &Entrada); // Recebe entrada
        switch (Entrada) // Verifica qual opção foi escolhida
        {
        case 1:                                                                                             // Caso a opção seja 1
            lancheModeloCadastrar.tipoLanche = Vegetariano;                                                 // Atribui o valor Vegetariano ao tipo do lanche
            break;                                                                                          // Sai do case
        case 2:                                                                                             // Caso a opção seja 2
            lancheModeloCadastrar.tipoLanche = temCarne;                                                    // Atribui o valor temCarne ao tipo do lanche
            break;                                                                                          // Sai do case
        default:                                                                                            // Caso não seja nenhuma das opções anteriores
            Vermelho("Voce inseriu uma opcao invalida! Tente novamente.\n");                                // Imprime a mensagem na tela
            break;                                                                                          // Sai do case
        }                                                                                                   // Fim do switch
    } while (Entrada != 1 && Entrada != 2);                                                                 // Enquanto o usuário não digitar uma opção válida
    srand(time(NULL));                                                                                      // Gera um número aleatório
    lancheModeloCadastrar.idLanche = rand() % 10000;                                                        // Atribui um id aleatório ao lanche
    while (existeLanchesID(Lanches, lancheModeloCadastrar.idLanche) || lancheModeloCadastrar.idLanche == 0) // Enquanto o id do lanche já existir ou for 0
    {
        lancheModeloCadastrar.idLanche = rand() % 10000; // Atribui um id aleatório ao lanche
    }                                                    // Fim do while
    Limpar();                                            // Limpa a tela
    do                                                   // Repete o código enquanto o usuário não digitar um id válido
    {
        listarFranquias(Franquias);                                    // Lista as franquias
        printf("Franquias que irao receber: ");                        // Imprime a mensagem na tela
        for (size_t i = 0; i < quantidadeFranquiasReceberaLanche; i++) // Para cada franquia que irá receber o lanche
        {
            printf("%i ", idFranquiaCadastrar[i]);                                                                                                                             // Imprime o id da franquia
        }                                                                                                                                                                      // Fim do for
        printf("\nInsira o ID da franquia em que esse lanche sera cadastrado, utilize 0 para cadastra-lo em todas as franquias ou -1 para encerrar o processo de cadastro: "); // Imprime a mensagem na tela
        scanf("%i", &Entrada);                                                                                                                                                 // Lê a entrada de dados
        if (Entrada == 0)                                                                                                                                                      // Caso o usuário digitar 0
        {
            idFranquiaCadastrar = realloc(idFranquiaCadastrar, lerQuantidadeFranquias() * sizeof(int)); // Aloca memória para o vetor de id de franquias
            memset(idFranquiaCadastrar, '\0', lerQuantidadeFranquias() * sizeof(int));                  // Limpa o vetor de id de franquias
            for (size_t i = 0; i < lerQuantidadeFranquias(); i++)                                       // Para cada franquia
            {
                if (Franquias[i].idFranquia != 0) // Caso a franquia não seja 0
                {
                    idFranquiaCadastrar[i] = Franquias[i].idFranquia;              // Atribui o id da franquia ao vetor de id de franquias
                    quantidadeFranquiasReceberaLanche++;                           // Incrementa a quantidade de franquias que irão receber o lanche
                }                                                                  // Fim do if
            }                                                                      // Fim do for
            break;                                                                 // Sai do do-while
        }                                                                          // Fim do if
        if (existeFranquiaID(Franquias, Entrada) && Entrada != 0 && Entrada != -1) // Caso o id da franquia exista e o usuário não digitar 0 ou -1
        {
            jaTem = 0;                                                     // Zera a variável jaTem
            for (size_t i = 0; i < quantidadeFranquiasReceberaLanche; i++) // Para cada franquia que irá receber o lanche
            {
                if (idFranquiaCadastrar[i] == Entrada) // Caso o id da franquia já exista no vetor de id de franquias
                {
                    Limpar();                                                     // Limpa a tela
                    Vermelho("Essa franquia ja ira receber esse lanche!\n");      // Imprime a mensagem na tela
                    jaTem = 1;                                                    // Atribui 1 a variável jaTem
                }                                                                 // Fim do if
            }                                                                     // Fim do for
            if (!jaTem)                                                           // Caso a variável jaTem seja 0
            {                                                                     // Fim do if
                idFranquiaCadastrar[quantidadeFranquiasReceberaLanche] = Entrada; // Atribui o id da franquia ao vetor de id de franquias
                quantidadeFranquiasReceberaLanche++;                              // Incrementa a quantidade de franquias que irão receber o lanche                                                                          // Incrementa a quantidade de franquias que irão receber o lanche
                Limpar();                                                         // Limpa a tela
            }                                                                     // Fim do if
        }                                                                         // Fim do if
        else if (Entrada != 0 && Entrada != -1)                                   // Caso o id da franquia não exista e o usuário não digitar 0 ou -1
        {
            Limpar();                                                                                    // Limpa a tela
            Vermelho("Essa franquia nao foi encontrada no banco de dados. Tente novamente!\n");          // Imprime a mensagem na tela
        }                                                                                                // Fim do else if
    } while (Entrada != -1 && Entrada != 0);                                                             // Enquanto o usuário não digitar 0 ou -1
    idFranquiaCadastrar = realloc(idFranquiaCadastrar, quantidadeFranquiasReceberaLanche * sizeof(int)); // Aloca memória para o vetor de id de franquias
    for (size_t i = 0; i < quantidadeFranquiasReceberaLanche; i++)                                       // Para cada franquia que irá receber o lanche
    {
        lancheCadastro = lancheModeloCadastrar;                        // Atribui o modelo do lanche ao lanche cadastro
        lancheCadastro.idFranquiaPertencente = idFranquiaCadastrar[i]; // Atribui o id da franquia ao lanche cadastro

        if (lerQuantidadeLanches > 0) // Caso a quantidade de lanches seja maior que 0
        {
            for (size_t i = 0; i < lerQuantidadeLanches(); i++) // Para cada lanche
            {
                if (Lanches[i].idLanche == 0) // Caso o id do lanche seja 0
                {
                    lanchesRemovidos++;       // Incrementa a quantidade de lanches removidos
                    lancheRemovidoIndice = i; // Atribui o índice do lanche removido ao lanche removido indice
                }                             // Fim do if
            }                                 // Fim do for
        }                                     // Fim do if
        if (lanchesRemovidos > 0)             // Caso a quantidade de lanches removidos seja maior que 0
        {
            Lanches[lancheRemovidoIndice] = lancheCadastro; // Atribui o lanche cadastro ao lanche removido
            lanchesRemovidos--;                             // Decrementa a quantidade de lanches removidos
        }                                                   // Fim do if
        else                                                // Caso a quantidade de lanches removidos seja 0
        {
            FILE *database = fopen("database/databaseLanches.dat", "a+b"); // Abre o arquivo databaseLanches.dat
            (*quantidadeLanchesArquivo)++;                                 // Incrementa a quantidade de lanches no arquivo
            fwrite(&lancheCadastro, sizeof(Lanche), 1, database);          // Escreve o lanche cadastro no arquivo
            fclose(database);                                              // Fecha o arquivo databaseLanches.dat
            // Lanches = realloc(Lanches, lerQuantidadeLanches() * sizeof(Lanche));
            // memset(&Lanches[lerQuantidadeLanches() - 1], '\0', sizeof(Lanche));
            Lanches[lerQuantidadeLanches() - 1] = lancheCadastro; // Atribui o lanche cadastro ao lanche
        }                                                         // Fim do else
    }                                                             // Fim do for
    // lerLanchesDoArquivo(Lanches);
    Limpar();
    Verde("Lanche cadastrado com sucesso com sucesso!\n"); // Imprime a mensagem na tela
} // Fim do método cadastrarLanche

void listarLanches(Lanche *Lanches) // Método para listar os lanches
{
    int *idLanches = calloc(100, sizeof(int)), quantidadeArmazenado = 0, quantidadeArmazenadoAux = 0, jaTem; // Cria um vetor de int com 100 posições e inicializa com 0
    if (lerQuantidadeLanches() == 0)                                                                         // Caso a quantidade de lanches seja 0
    {
        Vermelho("Nenhum lanche foi cadastrado ainda!\n"); // Imprime a mensagem na tela
    }                                                      // Fim do if
    else                                                   // Caso a quantidade de lanches seja maior que 0
    {
        for (size_t i = 0; i < lerQuantidadeLanches(); i++) // Para cada lanche
        {
            if (Lanches[i].idLanche != 0) // Caso o id do lanche seja diferente de 0
            {

                jaTem = 0;                                        // Inicializa a variável jaTem com 0
                for (size_t j = 0; j < quantidadeArmazenado; j++) // Para cada lanche armazenado
                {
                    if (Lanches[i].idLanche == idLanches[j]) // Caso o id do lanche armazenado seja igual ao id do lanche atual
                    {
                        jaTem = 1; // Atribui 1 a variável jaTem
                    }              // Fim do if
                }                  // Fim do for
                if (!jaTem)        // Caso a variável jaTem seja 0
                {
                    idLanches[quantidadeArmazenado] = Lanches[i].idLanche;                                                                // Atribui o id do lanche armazenado ao vetor de id de lanches
                    quantidadeArmazenado++;                                                                                               // Incrementa a quantidade de lanches armazenados
                    quantidadeArmazenadoAux++;                                                                                            // Incrementa a quantidade de lanches armazenados
                    printf("Id do lanche: %i\nNome do lanche: %s\nFranquias com o lanche: ", Lanches[i].idLanche, Lanches[i].nomeLanche); // Imprime na tela o nome do lanche e o id do lanche
                    for (size_t j = 0; j < lerQuantidadeLanches(); j++)                                                                   // Para cada lanche
                    {
                        if (Lanches[j].idLanche == Lanches[i].idLanche) // Caso o id do lanche seja igual ao id do lanche atual
                        {
                            printf("%i ", Lanches[j].idFranquiaPertencente);                                                                                                                                                                                                                 // Imprime na tela o id da franquia
                        }                                                                                                                                                                                                                                                                    // Fim do if
                    }                                                                                                                                                                                                                                                                        // Fim do for
                    printf("\nDescricao do lanche: %s\nCusto de producao: R$%.2f\nPreco de venda: R$%.2f\nCalorias: %i kCal \nTipo do lanche: %s\n\n", Lanches[i].descricaoDoLanche, Lanches[i].custoProducao, Lanches[i].valorLanche, Lanches[i].calorias, retornarTipoLanche(Lanches[i])); // Imprime na tela a descrição do lanche, o custo de produção, o valor do lanche, as calorias e o tipo do lanche
                }                                                                                                                                                                                                                                                                            // Fim do if
            }                                                                                                                                                                                                                                                                                // Fim do if
        }                                                                                                                                                                                                                                                                                    // Fim do for
    }                                                                                                                                                                                                                                                                                        // Fim do else
} // Fim do método listarLanches

void removerLanche(Lanche *Lanches, int *quantidadeLanchesArquivo) // Método para remover um lanche
{
    Usuario usuarioLogar;              // Cria um usuário para logar
    int lancheRemover, posicao, opcao; // Cria variáveis para armazenar o id do lanche a ser removido e a posição do lanche a ser removido
    char busca[50];                    // Cria uma variável para armazenar o nome do lanche a ser removido
    if (lerQuantidadeLanches() == 0)   // Caso a quantidade de lanches seja 0
    {
        Limpar();                                                                                                                                               // Limpa a tela
        Vermelho("Nenhum lanche foi cadastrado ainda!\n");                                                                                                      // Imprime a mensagem na tela
        return;                                                                                                                                                 // Retorna
    }                                                                                                                                                           // Fim do if
    Vermelho("----------- SISTEMA INTEGRADO DE GERENCIAMENTO DE FRANQUIAS -----------\n");                                                                      // Imprime na tela o título do sistema
    Vermelho("Alternando para modo de remover lanche: \n\n");                                                                                                   // Imprime na tela a mensagem de alternância para o modo de remover lanche
    listarLanches(Lanches);                                                                                                                                     // Lista os lanches
    Vermelho("Escolha um dos dados a seguir para remover um lanche: \n\n[1] - ID\n[2] - Nome do lanche\n\nDigite uma opcao ou digite 0 para voltar ao menu: "); // Imprime na tela a mensagem de escolha para remover um lanche
    do                                                                                                                                                          // Início do laço de repetição
    {
        scanf("%i", &opcao);          // Lê a opção do usuário
        if (opcao != 1 && opcao != 2) // Caso a opção seja diferente de 1 e 2
        {
            if (opcao == 0) // Caso a opção seja 0
            {
                Limpar();                                                                                          // Limpa a tela
                return;                                                                                            // Retorna
            }                                                                                                      // Fim do if
            Vermelho("Insira uma das opcoes validas! Voce tambem pode digitar 0 para voltar ao menu principal\n"); // Imprime na tela a mensagem de opção invalida
        }                                                                                                          // Fim do if
    } while (opcao != 1 && opcao != 2);                                                                            // Fim do laço de repetição
    if (opcao == 1)                                                                                                // Caso a opção seja 1
    {
        Vermelho("Insira o ID do lanche que voce gostaria de remover ou digite 0 para voltar ao menu: "); // Imprime na tela a mensagem de inserção do id do lanche
        do                                                                                                // Início do laço de repetição
        {
            setbuf(stdin, NULL);                          // Limpa o buffer do teclado
            scanf("%i", &lancheRemover);                  // Lê o id do lanche a ser removido
            if (!existeLanchesID(Lanches, lancheRemover)) // Caso o id do lanche não exista
            {
                if (lancheRemover == 0) // Caso o id do lanche seja 0
                {
                    Limpar();                                                                                                         // Limpa a tela
                    return;                                                                                                           // Retorna
                }                                                                                                                     // Fim do if
                Vermelho("Lanche nao encontrado, insira o ID do lache a ser removido novamente ou digite 0 para voltar ao menu: \n"); // Imprime na tela a mensagem de lanche não encontrado
            }                                                                                                                         // Fim do if
        } while (!existeLanchesID(Lanches, lancheRemover));                                                                           // Fim do laço de repetição
        posicao = retornarLanchePorId(lancheRemover, Lanches);                                                                        // Retorna a posição do lanche a ser removido
    }                                                                                                                                 // Fim do if
    else if (opcao == 2)                                                                                                              // Caso a opção seja 2
    {
        Vermelho("Insira o nome do lanche que voce gostaria de remover ou digite voltar para voltar ao menu: "); // Imprime na tela a mensagem de inserção do nome do lanche
        do                                                                                                       // Início do laço de repetição
        {
            setbuf(stdin, NULL);                    // Limpa o buffer do teclado
            fgets(busca, 50, stdin);                // Lê o nome do lanche a ser removido
            busca[strcspn(busca, "\n")] = '\0';     // Remove o \n do fim da string
            if (!existeLanchesNome(Lanches, busca)) // Caso o nome do lanche não exista
            {
                if (!strcmp(busca, "voltar")) // Caso o nome do lanche seja voltar
                {
                    Limpar();                                                                                                               // Limpa a tela
                    return;                                                                                                                 // Retorna
                }                                                                                                                           // Fim do if
                Vermelho("Lanche nao encontrado, insira o nome do lache a ser removido novamente ou digite voltar para voltar ao menu!\n"); // Imprime na tela a mensagem de lanche não encontrado
            }                                                                                                                               // Fim do if
        } while (!existeLanchesNome(Lanches, busca));                                                                                       // Fim do laço de repetição
        posicao = retornarLanchePorNomeR(busca, Lanches);                                                                                   // Retorna a posição do lanche a ser removido
    }                                                                                                                                       // Fim do else
    printf("\033[0;31m");                                                                                                                   // Muda a cor do texto para vermelho
    printf("Voce esta prestes a remover o lanche ID #%i\n", Lanches[posicao].idLanche);                                                     // Imprime na tela a mensagem de confirmação de remoção do lanche
    Vermelho("Para confirmar porfavor informe seu login e senha para confirmar a remocao.\n");                                              // Imprime na tela a mensagem de confirmação de remoção do lanche
    do                                                                                                                                      // Início do laço de repetição
    {
        Vermelho("Insira seu usuario cadastrado: ");                      // Imprime na tela a mensagem de inserção do usuário
        fflush(stdin);                                                    // Limpa o buffer do teclado
        fgets(usuarioLogar.usuario, 30, stdin);                           // Lê o usuário
        usuarioLogar.usuario[strcspn(usuarioLogar.usuario, "\n")] = '\0'; // Remove o \n do fim da string
        fflush(stdin);                                                    // Limpa o buffer do teclado
        Vermelho("Insira usa senha: ");                                   // Imprime na tela a mensagem de inserção da senha
        fgets(usuarioLogar.senha, 30, stdin);                             // Lê a senha
        usuarioLogar.senha[strcspn(usuarioLogar.senha, "\n")] = '\0';     // Remove o \n do fim da string
        fflush(stdin);                                                    // Limpa o buffer do teclado
        if (validarLogin(usuarioLogar))                                   // Caso o usuário e senha sejam válidos
        {
            Lanches[posicao].idLanche = 0; // Remove o lanche
        }                                  // Fim do if
        else                               // Caso o usuário e senha não sejam válidos
        {
            Vermelho("Usuario e/ou senha incorreta!\n");      // Imprime na tela a mensagem de usuário e senha incorreta
        }                                                     // Fim do else
    } while (!validarLogin(usuarioLogar));                    // Fim do laço de repetição
    Limpar();                                                 // Limpa a tela
    Verde("Lanche removido com sucesso!\n");                  // Imprime na tela a mensagem de lanche removido com sucesso
    atualizarDadosLanches(Lanches, quantidadeLanchesArquivo); // Atualiza os dados dos lanches
} // Fim da função removerLanche

// Franquias
void listarFranquias(Franquia *Franquias) // Função para listar as franquias
{
    if (lerQuantidadeFranquias() == 0) // Caso não existam franquias
    {
        Vermelho("Nenhuma franquia foi cadastrada ainda!\n"); // Imprime na tela a mensagem de nenhuma franquia cadastrada
    }                                                         // Fim do if
    else                                                      // Caso existam franquias
    {
        for (size_t i = 0; i < lerQuantidadeFranquias(); i++) // Início do laço de repetição
        {
            if (!Franquias[i].idFranquia == 0) // Caso o franquia não seja removido
            {
                printf("ID: %d | Cidade: %-20s | Endereco: %-20s | Gerente: %-20s | Clientes Anuais: %-8i | Faturamento anual: R$%-8.2f | Tipo da franquia: %s\n", Franquias[i].idFranquia, Franquias[i].cidadeFranquia, Franquias[i].Endereco, Franquias[i].nomeGerente, Franquias[i].clientesAnuais, Franquias[i].faturamentoAnual, retornarTipoFranquia(Franquias[i])); // Imprime na tela os dados da franquia
            }                                                                                                                                                                                                                                                                                                                                                              // Fim do if
        }                                                                                                                                                                                                                                                                                                                                                                  // Fim do laço de repetição
    }                                                                                                                                                                                                                                                                                                                                                                      // Fim do else
    printf("\n");                                                                                                                                                                                                                                                                                                                                                          // Imprime uma linha em branco
} // Fim da função listarFranquias

void adicionarFranquia(Franquia *Franquias, int *quantidadeFranquiasArquivo) // Função para adicionar uma franquia
{
    Franquia FranquiaParaCadastrar;                     // Cria um franquia para cadastrar
    int franquiasRemovidas = 0, franquiaRemovidaIndice; // Cria variáveis para armazenar a entrada do usuário e a quantidade de franquias removidas
    char Entrada;
    printf("----------- SISTEMA INTEGRADO DE GERENCIAMENTO DE FRANQUIAS -----------\n");              // Imprime na tela o título do sistema
    setbuf(stdin, NULL);                                                                              // Limpa o buffer do teclado
    printf("Insira a cidade onde esta localizada a franquia: ");                                      // Imprime na tela a mensagem de inserção da cidade
    fgets(FranquiaParaCadastrar.cidadeFranquia, 50, stdin);                                           // Lê a cidade
    FranquiaParaCadastrar.cidadeFranquia[strcspn(FranquiaParaCadastrar.cidadeFranquia, "\n")] = '\0'; // Remove o \n do fim da string
    setbuf(stdin, NULL);                                                                              // Limpa o buffer do teclado
    cabecalho();                                                                                      // Chama a função para imprimir o cabeçalho
    printf("Insira o endereco desta franquia: ");                                                     // Imprime na tela a mensagem de inserção do endereco
    fgets(FranquiaParaCadastrar.Endereco, 50, stdin);                                                 // Lê o endereço
    FranquiaParaCadastrar.Endereco[strcspn(FranquiaParaCadastrar.Endereco, "\n")] = '\0';             // Remove o \n do fim da string
    setbuf(stdin, NULL);                                                                              // Limpa o buffer do teclado
    cabecalho();                                                                                      // Chama a função para imprimir o cabeçalho
    printf("Insira o nome do gerente desta franquia: ");                                              // Imprime na tela a mensagem de inserção do nome do gerente
    fgets(FranquiaParaCadastrar.nomeGerente, 50, stdin);                                              // Lê o nome do gerente
    FranquiaParaCadastrar.nomeGerente[strcspn(FranquiaParaCadastrar.nomeGerente, "\n")] = '\0';       // Remove o \n do fim da string
    setbuf(stdin, NULL);                                                                              // Limpa o buffer do teclado
    cabecalho();                                                                                      // Chama a função para imprimir o cabeçalho
    printf("Insira o faturamento anual desta franquia: ");                                            // Imprime na tela a mensagem de inserção do faturamento anual
    scanf("%f", &FranquiaParaCadastrar.faturamentoAnual);                                             // Lê o faturamento anual
    setbuf(stdin, NULL);                                                                              // Limpa o buffer do teclado
    cabecalho();                                                                                      // Chama a função para imprimir o cabeçalho
    printf("Insira a quantidade anual de clientes desta franquia: ");                                 // Imprime na tela a mensagem de inserção da quantidade anual de clientes
    scanf("%i", &FranquiaParaCadastrar.clientesAnuais);                                               // Lê a quantidade anual de clientes
    setbuf(stdin, NULL);                                                                              // Limpa o buffer do teclado
    cabecalho();                                                                                      // Chama a função para imprimir o cabeçalho
    do                                                                                                // Início do laço de repetição
    {
        printf("Qual o tipo desta franquia: \n[1] - Propria\n[2] - Alugada para terceiros\n\nEntrada de dados: "); // Imprime na tela a mensagem de inserção do tipo da franquia
        setbuf(stdin, NULL);
        Entrada = getchar(); // Lê a entrada do usuário
        switch (Entrada)     // Início do switch
        {
        case '1':                                                                                                  // Caso a entrada seja 1
            FranquiaParaCadastrar.tFranquia = Propria;                                                             // Atribui o valor 1 ao tipo da franquia
            break;                                                                                                 // Fim do case
        case '2':                                                                                                  // Caso a entrada seja 2
            FranquiaParaCadastrar.tFranquia = Alugado;                                                             // Atribui o valor 2 ao tipo da franquia
            break;                                                                                                 // Fim do case
        default:                                                                                                   // Caso a entrada não seja 1 nem 2
            Vermelho("Voce inseriu uma opcao invalida! Tente novamente.\n");                                       // Imprime na tela a mensagem de erro
            break;                                                                                                 // Fim do default
        }                                                                                                          // Fim do switch
    } while (Entrada != '1' && Entrada != '2');                                                                     
    srand(time(NULL));                                                                                             // Inicializa a função de gerador de números aleatórios
    FranquiaParaCadastrar.idFranquia = rand() % 10000;                                                             // Atribui um número aleatório ao ID da franquia
    while (existeFranquiaID(Franquias, FranquiaParaCadastrar.idFranquia) || FranquiaParaCadastrar.idFranquia == 0) // Início do laço de repetição
    {
        FranquiaParaCadastrar.idFranquia = rand() % 10000; // Atribui um número aleatório ao ID da franquia
    }                                                      // Fim do laço de repetição
    if (lerQuantidadeFranquias() > 0)                      // Início do if
    {
        for (size_t i = 0; i < (*quantidadeFranquiasArquivo); i++) // Início do laço de repetição
        {
            if (Franquias[i].idFranquia == 0) // Início do if
            {
                franquiasRemovidas++;       // Incrementa o número de franquias removidas
                franquiaRemovidaIndice = i; // Atribui o índice da franquia removida
                break;                      // Fim do if
            }                               // Fim do if
        }                                   // Fim do laço de repetição
    }                                       // Fim do if
    if (franquiasRemovidas == 0)            // Início do if
    {
        FILE *database = fopen("database/databaseFranquias.dat", "a+b"); // Abre o arquivo databaseFranquias.dat para escrita
        (*quantidadeFranquiasArquivo)++;                                 // Incrementa o número de franquias no arquivo
        fwrite(&FranquiaParaCadastrar, sizeof(Franquia), 1, database);   // Escreve no arquivo o registro da franquia
        fclose(database);                                                // Fecha o arquivo
        // Franquias = realloc(Franquias, lerQuantidadeFranquias() * sizeof(Franquia));
        // memset(Franquias, '\0', lerQuantidadeFranquias() * sizeof(Franquia));
        lerFranquiasDoArquivo(Franquias); // Chama a função para ler as franquias do arquivo
    }                                     // Fim do if
    else                                  // Início do else
    {
        Franquias[franquiaRemovidaIndice] = FranquiaParaCadastrar; // Atribui o registro da franquia ao índice da franquia removida
        atualizarDados(Franquias, quantidadeFranquiasArquivo);     // Chama a função para atualizar os dados do arquivo
    }                                                              // Fim do else
    Limpar();                                                      // Chama a função para limpar a tela
    Verde("Unidade cadastrada com sucesso!\n");                    // Imprime na tela a mensagem de sucesso
} // Fim da função cadastrarFranquia

void removerFranquia(Franquia *Franquias, int *quantidadeFranquiasArquivo) // Função para remover uma franquia
{
    Usuario usuarioLogar; // Indica utilização da struct usuarios
    int opcao, idBuscar, posicao; //Cria variaveis para auxiliar na busca de cidade e gerente
    char cidadeBuscar[50], nomeGerenteBuscar[50]; //Cria variaveis para buscar cidade e gerente
    if (lerQuantidadeFranquias() == 0) // Caso não existam franquias
    {
        Vermelho("Nenhuma franquia foi cadastrada ainda!\n"); // Aparece o texto indicado na tela
        Limpar(); // Limpa a tela
        return; // Retorna 
    } // Fim do if
    Vermelho("----------- SISTEMA INTEGRADO DE GERENCIAMENTO DE FRANQUIAS -----------\n");  // Aparece o texto indicado na tela
    Vermelho("Alternando para modo de remo�?o de franquia\nEscolha um dos dados a seguir remover uma franquia: \n\n[1] - ID\n[2] - Cidade e Gerente\n\nDigite uma opcao ou digite 0 para voltar ao menu! "); // Aparece o texto indicado na tela
    do // Início do laço de repetição
    {
        scanf("%i", &opcao); // Recebe a opção digitada 
        if (opcao != 1 && opcao != 2)  // Se a opção for diferente de 1 e 2
        {
            if (opcao == 0) // Se a opção e igual a 0
            {
                Limpar(); // Limpa a tela
                return; // Retorna 
            }  // Fim do if
            Vermelho("Insira uma das opcoes validas! Voce tambem pode digitar 0 para voltar ao menu principal\n"); // Aparece o texto indicado na tela
        } // Fim do if
    } while (opcao != 1 && opcao != 2); // Fim do laço de repetição

    if (opcao == 1) // Se a opção for igual a 1
    {
        do // Início do laço de repetição
        {
            Vermelho("Insira o ID da franquia que voce deseja remover buscar ou 0 para voltar para o menu: "); // Aparece o texto indicado na tela
            scanf("%i", &idBuscar); // Recebe a id digitada 
            if (idBuscar == 0) // Se for id igual a 0
            {
                Limpar(); // Limpa a tela
                return; // Retorna 
            } // Fim do if
            if (!existeFranquiaID(Franquias, idBuscar)) // Se o id pesquisado não existir
            {
                Vermelho("Franquia nao encontrada! Tente novamente.\n"); // Aparece o texto indicado na tela
            } // Fim do if
        } while (!existeFranquiaID(Franquias, idBuscar)); // Fim do laço de repetição
        Franquia franquiaBuscada = Franquias[retornarFranquiaPorId(idBuscar, Franquias)]; // Retorna a franquia
    }
    else if (opcao == 2) // Se a opção for igual a 1
    {
        do // Início do laço de repetição
        {
            Vermelho("Digite o nome da cidade onde a franquia est�: "); // Aparece o texto indicado na tela
            setbuf(stdin, NULL); // Limpa buffer
            fgets(cidadeBuscar, 50, stdin); // Recebe o nome da cidade buscada
            cidadeBuscar[strcspn(cidadeBuscar, "\n")] = '\0'; // Remove o \n do fim da string
            Vermelho("Digite o nome do gerente da franquia que voce deseja remover: "); // Aparece o texto indicado na tela
            setbuf(stdin, NULL); // Limpa buffer
            fgets(nomeGerenteBuscar, 50, stdin); // Recebe o nome do gerente buscado
            nomeGerenteBuscar[strcspn(nomeGerenteBuscar, "\n")] = '\0'; // Remove o \n do fim da string
            if (!strcmp(cidadeBuscar, "voltar") && !strcmp(nomeGerenteBuscar, "voltar")) // Se a cidade buscada e o gerente buscado forem diferente de voltar
            {
                Limpar(); // Limpa a tela
                return; // Retorna 
            } // Fim do if
            if (!existeFranquiaCidade(Franquias, cidadeBuscar) && !existeFranquiaGerente(Franquias, nomeGerenteBuscar)) // Se a cidade buscada e o gerente buscado forem diferente das pertencentes ao arquivo
            {
                Vermelho("Nao foi encontrada nenhuma franquia com as informacoes fornecidas, voce pode tentar novamente ou digitar voltar em ambas as entradas e voltar para o menu principal\n"); // Aparece o texto indicado na tela
            } // Fim do if
        } while (!existeFranquiaCidade(Franquias, cidadeBuscar) && !existeFranquiaGerente(Franquias, nomeGerenteBuscar)); // Fim do laço de repetição
        Franquia franquiaBuscada = retornarFranquiaPorCidadeGerente(cidadeBuscar, nomeGerenteBuscar, Franquias);
        posicao = retornarFranquiaPorId(franquiaBuscada.idFranquia, Franquias);
        printf("\033[0;31m"); // Cor do texto
        printf("Voce esta prestes a remover a Franquia ID #%i\n", Franquias[posicao].idFranquia); // Aparece o texto indicado na tela
        Vermelho("Para confirmar porfavor informe seu login e senha para confirmar a remocao.\n"); // Aparece o texto indicado na tela
        do
        {
            Vermelho("Insira seu usuario cadastrado: ");                      // Imprime na tela a mensagem de inserção do usuário
            fflush(stdin);                                                    // Limpa o buffer do teclado
            fgets(usuarioLogar.usuario, 30, stdin);                           // Lê a entrada do usuário
            usuarioLogar.usuario[strcspn(usuarioLogar.usuario, "\n")] = '\0'; // Remove o caractere de nova linha do fim da string
            fflush(stdin);                                                    // Limpa o buffer do teclado
            Vermelho("Insira usa senha: ");                                   // Imprime na tela a mensagem de inserção da senha
            fgets(usuarioLogar.senha, 30, stdin);                             // Lê a entrada do usuário
            usuarioLogar.senha[strcspn(usuarioLogar.senha, "\n")] = '\0';     // Remove o caractere de nova linha do fim da string
            fflush(stdin);                                                    // Limpa o buffer do teclado
            if (validarLogin(usuarioLogar))                                   // Início do if
            {
                Franquias[posicao].idFranquia = 0; // Atribui o valor 0 ao ID da franquia
            }                                      // Fim do if
            else                                   // Início do else
            {
                Vermelho("Usuario e/ou senha incorreta!\n");   // Imprime na tela a mensagem de usuário e/ou senha incorreta
            }                                                  // Fim do else
        } while (!validarLogin(usuarioLogar));                 // Fim do laço de repetição
        Limpar();                                              // Chama a função para limpar a tela
        Verde("Franquia removida com sucesso!\n");             // Imprime na tela a mensagem de sucesso
        atualizarDados(Franquias, quantidadeFranquiasArquivo); // Chama a função para atualizar os dados
    }                                                          // Fim da função removerFranquia
}
void editarFranquia(Franquia *Franquias, int *quantidadeFranquiasArquivo) // Função para editar uma franquia
{
    if (lerQuantidadeFranquias() == 0) // Início do if
    {
        Limpar();                                             // Chama a função para limpar a tela
        Vermelho("Nenhuma franquia foi cadastrada ainda!\n"); // Imprime na tela a mensagem de erro
        return;                                               // Fim da função
    }                                                         // Fim do if
    int franquiaEditar, posicao, auxiliarI;                   // Declaração de variáveis
    char itemEditar, charEntrada;
    float auxiliarF;                                                                                  // Declaração de variáveis
    char auxiliarC[100];                                                                              // Declaração de variáveis
    Amarelo("----------- SISTEMA INTEGRADO DE GERENCIAMENTO DE FRANQUIAS -----------\n");             // Imprime na tela a mensagem de boas vindas
    Amarelo("Alternando para modo de edicao de franquias: \n\n");                                     // Imprime na tela a mensagem de alternância para o modo de edição de franquias
    listarFranquias(Franquias);                                                                       // Chama a função para listar as franquias
    Amarelo("\nEscolha uma franquia para editar\n");                                                  // Imprime na tela a mensagem de escolha de franquia
    Amarelo("Insira o ID da franquia que voce gostaria de editar ou digite 0 para voltar ao menu: "); // Imprime na tela a mensagem de inserção do ID da franquia
    do                                                                                                // Início do laço de repetição
    {
        scanf("%i", &franquiaEditar);                     // Lê a entrada do usuário
        if (!existeFranquiaID(Franquias, franquiaEditar)) // Início do if
        {
            if (franquiaEditar == 0) // Início do if
            {
                Limpar();                                                                                                                                                                                                // Chama a função para limpar a tela
                return;                                                                                                                                                                                                  // Fim da função
            }                                                                                                                                                                                                            // Fim do if
            Vermelho("Franquia nao encontrada, insira o ID da franquia a ser editada novamente ou digite 0 para voltar para o menu!\n");                                                                                 // Imprime na tela a mensagem de franquia não encontrada
            Amarelo("Insira o ID da franquia que voce gostaria de editar: ");                                                                                                                                            // Imprime na tela a mensagem de inserção do ID da franquia
        }                                                                                                                                                                                                                // Fim do if
    } while (!existeFranquiaID(Franquias, franquiaEditar) || franquiaEditar == 0);                                                                                                                                       // Fim do laço de repetição
    posicao = retornarFranquiaPorId(franquiaEditar, Franquias);                                                                                                                                                          // Chama a função para retornar a posição da franquia
    Amarelo("Insira uma das opcoes abaixo para editar dados na franquia\n\n");                                                                                                                                           // Imprime na tela a mensagem de escolha de opção para editar dados na franquia
    Amarelo("[1] - Cidade da Franquia\n[2] - Endereco da Franquia\n[3] - Nome do gerente\n[4] - Numero de Clientes Anuais\n[5] - Faturamento Anual\n[6] - Tipo da Franquia\n[7] - Voltar para o menu de franquias\n\n"); // Imprime na tela a mensagem de escolha de opção para editar dados na franquia
    Amarelo("Insira uma das opcoes acima: ");                                                                                                                                                                            // Imprime na tela a mensagem de inserção de opção para editar dados na franquia
    do                                                                                                                                                                                                                   // Início do laço de repetição
    {
        setbuf(stdin, NULL);
        itemEditar = getchar();                                                                                                                              // Lê a entrada do usuário
        setbuf(stdin, NULL);                                                                                                                                 // Limpa o buffer do teclado
        if (itemEditar != '1' && itemEditar != '2' && itemEditar != '3' && itemEditar != '4' && itemEditar != '5' && itemEditar != '6' && itemEditar != '7') // Início do if
        {
            Vermelho("Opcao que foi inserida e invalida! favor inserir novamente a opcao\n");                                                                  // Imprime na tela a mensagem de opção inválida
            Amarelo("Insira uma das opcoes para editar dados na franquia: ");                                                                                  // Imprime na tela a mensagem de inserção de opção para editar dados na franquia
        }                                                                                                                                                      // Fim do if
    } while (itemEditar != '1' && itemEditar != '2' && itemEditar != '3' && itemEditar != '4' && itemEditar != '5' && itemEditar != '6' && itemEditar != '7'); // Fim do laço de repetição
    switch (itemEditar)                                                                                                                                        // Início do switch
    {
    case '1':                                                 // Início do case
        Amarelo("Insira a nova cidade da franquia: ");        // Imprime na tela a mensagem de inserção da nova cidade da franquia
        setbuf(stdin, NULL);                                  // Limpa o buffer do teclado
        fgets(auxiliarC, 100, stdin);                         // Lê a entrada do usuário
        auxiliarC[strcspn(auxiliarC, "\n")] = '\0';           // Limpa o buffer do teclado
        strcpy(Franquias[posicao].cidadeFranquia, auxiliarC); // Copia o conteúdo da variável auxiliar para a variável da franquia
        break;                                                // Fim do case
    case '2':                                                 // Início do case
        Amarelo("Insira o novo endereco da franquia: ");      // Imprime na tela a mensagem de inserção do novo endereço da franquia
        setbuf(stdin, NULL);                                  // Limpa o buffer do teclado
        fgets(auxiliarC, 100, stdin);                         // Lê a entrada do usuário
        auxiliarC[strcspn(auxiliarC, "\n")] = '\0';           // Limpa o buffer do teclado
        strcpy(Franquias[posicao].Endereco, auxiliarC);       // Copia o conteúdo da variável auxiliar para a variável da franquia
        break;                                                // Fim do case
    case '3':                                                 // Início do case
        Amarelo("Insira o nome do novo gerente: ");           // Imprime na tela a mensagem de inserção do nome do novo gerente
        setbuf(stdin, NULL);                                  // Limpa o buffer do teclado
        fgets(auxiliarC, 100, stdin);                         // Lê a entrada do usuário
        auxiliarC[strcspn(auxiliarC, "\n")] = '\0';           // Limpa o buffer do teclado
        strcpy(Franquias[posicao].nomeGerente, auxiliarC);    // Copia o conteúdo da variável auxiliar para a variável da franquia
        break;                                                // Fim do case
    case '4':                                                 // Início do case
        Amarelo("Insira o numero de clientes anuais: ");      // Imprime na tela a mensagem de inserção do número de clientes anuais
        scanf("%i", &auxiliarI);                              // Lê a entrada do usuário
        Franquias[posicao].clientesAnuais = auxiliarI;        // Copia o conteúdo da variável auxiliar para a variável da franquia
        break;                                                // Fim do case
    case '5':                                                 // Início do case
        Amarelo("Insira o faturamento anual: ");              // Imprime na tela a mensagem de inserção do faturamento anual
        scanf("%f", &auxiliarF);                              // Lê a entrada do usuário
        Franquias[posicao].faturamentoAnual = auxiliarF;      // Copia o conteúdo da variável auxiliar para a variável da franquia
        break;                                                // Fim do case
    case '6':                                                 // Início do case
        do                                                    // Início do laço de repetição
        {
            Amarelo("Qual o tipo desta franquia: \n[1] - Propria\n[2] - Alugada para terceiros\n\nEntrada de dados: "); // Imprime na tela a mensagem de inserção do tipo da franquia
            setbuf(stdin, NULL);
            charEntrada = getchar(); // Lê a entrada do usuário
            switch (auxiliarI)       // Início do switch
            {
            case '1':                                                            // Início do case
                Franquias[posicao].tFranquia = Propria;                          // Copia o conteúdo da variável auxiliar para a variável da franquia
                break;                                                           // Fim do case
            case '2':                                                            // Início do case
                Franquias[posicao].tFranquia = Alugado;                          // Copia o conteúdo da variável auxiliar para a variável da franquia
                break;                                                           // Fim do case
            default:                                                             // Início do default
                Vermelho("Voce inseriu uma opaao invalida! Tente novamente.\n"); // Imprime na tela a mensagem de opção inválida
                break;                                                           // Fim do default
            }                                                                    // Fim do switch
        } while (auxiliarI != '1' && auxiliarI != '2');                          // Fim do laço de repetição
        break;                                                                   // Fim do case
    case '7':                                                                    // Início do case
        Limpar();                                                                // Chama a função para limpar a tela
        return;                                                                  // Retorna para o menu principal
        break;                                                                   // Fim do case
    }                                                                            // Fim do switch
    Limpar();                                                                    // Chama a função para limpar a tela
    Verde("Franquia atualizada com sucesso!\n");                                 // Imprime na tela a mensagem de franquia atualizada com sucesso
    atualizarDados(Franquias, quantidadeFranquiasArquivo);                       // Chama a função para atualizar os dados no arquivo
} // Fim da função atualizarFranquia

void pesquisarFranquia(Franquia *Franquias, int *quantidadeFranquiasArquivo, Lanche *Lanches) // Início da função pesquisarFranquia
{
    int opcao, idBuscar, aux;
    aux = 0; // Variáveis para armazenar a opção e o id a ser buscado
    char cidadeBuscar[50], nomeGerenteBuscar[50];
    if (lerQuantidadeFranquias() == 0) // Caso não existam franquias
    {
        Vermelho("Nenhuma franquia foi cadastrada ainda!\n");
        Limpar();
        return;
    }                                                                                                                                                                                                              // Variáveis para armazenar a cidade e o nome do gerente a ser buscado
    printf("----------- SISTEMA INTEGRADO DE GERENCIAMENTO DE FRANQUIAS -----------\n");                                                                                                                           // Imprime na tela o título do sistema
    printf("Alternando para modo de pesquisa de uma franquia\nEscolha um dos dados a seguir para pesquisar franquia: \n\n[1] - ID\n[2] - Cidade e Gerente\n\nDigite uma opcao ou digite 0 para voltar ao menu! "); // Imprime na tela a mensagem de escolha de opção para pesquisar franquia
    do                                                                                                                                                                                                             // Início do laço de repetição
    {
        scanf("%i", &opcao);          // Lê a entrada do usuário
        if (opcao != 1 && opcao != 2) // Início do if
        {
            if (opcao == 0) // Início do if
            {
                Limpar();                                                                                          // Chama a função para limpar a tela
                return;                                                                                            // Retorna para o menu principal
            }                                                                                                      // Fim do if
            Vermelho("Insira uma das opcoes validas! Voce tambem pode digitar 0 para voltar ao menu principal\n"); // Imprime na tela a mensagem de opção inválida
        }                                                                                                          // Fim do if
    } while (opcao != 1 && opcao != 2);                                                                            // Fim do laço de repetição

    if (opcao == 1) // Início do if
    {
        do // Início do laço de repetição
        {
            printf("Insira o ID da franquia que voce deseja buscar: "); // Imprime na tela a mensagem de inserção do id da franquia
            scanf("%i", &idBuscar);                                     // Lê a entrada do usuário
            if (!existeFranquiaID(Franquias, idBuscar))                 // Início do if
            {
                Vermelho("Franquia nao encontrada! Tente novamente.\n");                                                                                                                                                                                                                                                                                                                                                     // Imprime na tela a mensagem de franquia não encontrada
            }                                                                                                                                                                                                                                                                                                                                                                                                                // Fim do if
        } while (!existeFranquiaID(Franquias, idBuscar));                                                                                                                                                                                                                                                                                                                                                                    // Fim do laço de repetição
        Franquia franquiaBuscada = Franquias[retornarFranquiaPorId(idBuscar, Franquias)];                                                                                                                                                                                                                                                                                                                                    // Copia o conteúdo da variável da franquia para a variável franquiaBuscada
        printf("\nFranquia Id: %d\nCidade localizada: %s\nEndereco: %s\nGerente atual: %s\nClientes Anuais: %i\nFaturamento anual: R$%.2f\nTipo da franquia: %s\nLanches nessa franquia: \n\n", franquiaBuscada.idFranquia, franquiaBuscada.cidadeFranquia, franquiaBuscada.Endereco, franquiaBuscada.nomeGerente, franquiaBuscada.clientesAnuais, franquiaBuscada.faturamentoAnual, retornarTipoFranquia(franquiaBuscada)); // Imprime na tela os dados da franquia buscada
        for (size_t i = 0; i < lerQuantidadeLanches(); i++) // Início do for
        {
            if (Lanches[i].idFranquiaPertencente == franquiaBuscada.idFranquia) // Se o id do lanche for igual ao da busca
            {
                aux++; // Soma 1 ao aux
                printf("Id do lanche: %i\nNome do lanche: %s\nDescricao do lanche: %s\nCusto de producao: R$%.2f\nPreco de venda: R$%.2f\nCalorias: %i kCal \nTipo do lanche: %s\n\n", Lanches[i].idLanche, Lanches[i].nomeLanche, Lanches[i].descricaoDoLanche, Lanches[i].custoProducao, Lanches[i].valorLanche, Lanches[i].calorias, retornarTipoLanche(Lanches[i])); // Imprime na tela os dados do lanche
            }  // Fim do if
        }// Fim do else if
    }                    // Fim do if
    else if (opcao == 2) // Início do else if
    {
        do // Início do laço de repetição
        {
            printf("Digite o nome da cidade que voce deseja buscar: ");                  // Imprime na tela a mensagem de inserção do nome da cidade
            setbuf(stdin, NULL);                                                         // Limpa o buffer do teclado
            fgets(cidadeBuscar, 50, stdin);                                              // Lê a entrada do usuário
            cidadeBuscar[strcspn(cidadeBuscar, "\n")] = '\0';                            // Limpa o buffer do teclado
            printf("Digite o nome do gerente que voce deseja buscar: ");                 // Imprime na tela a mensagem de inserção do nome do gerente
            setbuf(stdin, NULL);                                                         // Limpa o buffer do teclado
            fgets(nomeGerenteBuscar, 50, stdin);                                         // Lê a entrada do usuário
            nomeGerenteBuscar[strcspn(nomeGerenteBuscar, "\n")] = '\0';                  // Limpa o buffer do teclado
            if (!strcmp(cidadeBuscar, "voltar") && !strcmp(nomeGerenteBuscar, "voltar")) // Início do if
            {
                return;                                                                                                 // Retorna para o menu principal
            }                                                                                                           // Fim do if
            if (!existeFranquiaCidade(Franquias, cidadeBuscar) && !existeFranquiaGerente(Franquias, nomeGerenteBuscar)) // Início do if
            {
                Vermelho("Nao foi encontrada nenhuma franquia com as informacoes fornecidas, voce pode tentar novamente ou digitar voltar em ambas as entradas e voltar para o menu principal\n");                                                                                                                                                                                                                           // Imprime na tela a mensagem de franquia não encontrada
            }                                                                                                                                                                                                                                                                                                                                                                                                                // Fim do if
        } while (!existeFranquiaCidade(Franquias, cidadeBuscar) && !existeFranquiaGerente(Franquias, nomeGerenteBuscar));                                                                                                                                                                                                                                                                                                    // Fim do laço de repetição
        Franquia franquiaBuscada = retornarFranquiaPorCidadeGerente(cidadeBuscar, nomeGerenteBuscar, Franquias);                                                                                                                                                                                                                                                                                                             // Copia o conteúdo da variável da franquia para a variável franquiaBuscada
        printf("\nFranquia Id: %d\nCidade localizada: %s\nEndereco: %s\nGerente atual: %s\nClientes Anuais: %i\nFaturamento anual: R$%.2f\nTipo da franquia: %s\nLanches nessa franquia: \n\n", franquiaBuscada.idFranquia, franquiaBuscada.cidadeFranquia, franquiaBuscada.Endereco, franquiaBuscada.nomeGerente, franquiaBuscada.clientesAnuais, franquiaBuscada.faturamentoAnual, retornarTipoFranquia(franquiaBuscada)); // Imprime na tela os dados da franquia buscada
        for (size_t i = 0; i < lerQuantidadeLanches(); i++) // Início do for
        {
            if (Lanches[i].idFranquiaPertencente == franquiaBuscada.idFranquia) // Se o id do lanche for igual ao da busca
            {
                aux++; // Soma 1 ao aux
                printf("Id do lanche: %i\nNome do lanche: %s\nDescricao do lanche: %s\nCusto de producao: R$%.2f\nPreco de venda: R$%.2f\nCalorias: %i kCal \nTipo do lanche: %s\n\n", Lanches[i].idLanche, Lanches[i].nomeLanche, Lanches[i].descricaoDoLanche, Lanches[i].custoProducao, Lanches[i].valorLanche, Lanches[i].calorias, retornarTipoLanche(Lanches[i])); // Imprime na tela os dados do lanche
        } 
        if (aux == 0) // Se o id do lanche for igual ao da busca
        {
            Vermelho("Ainda n?o tem nenhum lanche cadastrado nessa franquia!\n"); // Aparece o texto indicado na tela
        }
    } // Fim do else if
 } // Fim da função buscarFranquia
}

void exportarCSV(Franquia *Franquias, Lanche *Lanches) // Função para exportar os dados da franquia e lanche em arquivo CSV
{
    int Entrada;                                                                                                                                                                                                 // Variável para armazenar a entrada do usuário
    Ciano("----------- SISTEMA INTEGRADO DE GERENCIAMENTO DE FRANQUIAS -----------\nEntrando no modo de exportacao de arquivos .CSV\n\n[1] - Exportar .CSV das franquias\n[2] - Exportar .CSV dos lanches\n\n"); // Imprime na tela a mensagem de exportação de arquivos
    do                                                                                                                                                                                                           // Início do laço de repetição
    {
        scanf("%i", &Entrada);              // Lê a entrada do usuário
        if ((Entrada != 1 && Entrada != 2)) // Início do if
        {
            Vermelho("Insira uma das opcoes validas!Entre com sua opcao novamente: \n"); // Imprime na tela a mensagem de opção inválida
        }                                                                                // Fim do if
    } while (Entrada != 1 && Entrada != 2);                                              // Fim do laço de repetição
    if (Entrada == 1)                                                                    // Início do if
    {
        FILE *csv = fopen("csv/csvFranquias.csv", "w"); // Abre o arquivo csv/csvFranquias.csv para escrita
        if (lerQuantidadeFranquias() == 0)              // Início do if
        {
            printf("Nao e possivel exportar um CSV das franquias pois nenhuma foi cadastrada ainda!\n"); // Imprime na tela a mensagem de franquia não cadastrada
            Limpar();                                                                                    // Limpa a tela
            return;                                                                                      // Retorna para o menu principal
        }                                                                                                // Fim do if
        else                                                                                             // Início do else
        {
            fprintf(csv, "ID Franquia, Cidade da franquia, Nome do gerente, Endereco da franquia, Faturamento anual, Clientes anuais, Tipo da franquia, ID dos lanches disponiveis na franquia\n"); // Escreve no arquivo csv/csvFranquias.csv a primeira linha do arquivo
            for (size_t i = 0; i < lerQuantidadeFranquias(); i++)                                                                                                                                   // Início do for
            {
                if (Franquias[i].idFranquia != 0) // Início do if
                {
                    fprintf(csv, "%i,%s,%s,%s,%.2f,%i,%s, ", Franquias[i].idFranquia, Franquias[i].cidadeFranquia, Franquias[i].nomeGerente, Franquias[i].Endereco, Franquias[i].faturamentoAnual, Franquias[i].clientesAnuais, retornarTipoFranquia(Franquias[i])); // Escreve no arquivo csv/csvFranquias.csv os dados da franquia
                    for (size_t j = 0; j < lerQuantidadeLanches(); j++)                                                                                                                                                                                              // Início do for
                    {
                        if (Lanches[j].idFranquiaPertencente == Franquias[i].idFranquia) // Início do if
                        {
                            fprintf(csv, "%i ", Lanches[j].idFranquiaPertencente); // Escreve no arquivo csv/csvFranquias.csv o id do lanche
                        }                                                          // Fim do if
                    }                                                              // Fim do for
                    fprintf(csv, "\n");                                            // Escreve no arquivo csv/csvFranquias.csv uma nova linha
                }                                                                  // Fim do if
            }                                                                      // Fim do for
            Limpar();                                                              // Limpa a tela
            Verde(".CSV exportado com sucesso!\n");                                // Imprime na tela a mensagem de exportação com sucesso
            fclose(csv);                                                           // Fecha o arquivo csv/csvFranquias.csv
        }                                                                          // Fim do else
    }                                                                              // Fim do if
    else                                                                           // Início do else
    {
        FILE *csv = fopen("csv/csvLanches.csv", "w");                                                            // Abre o arquivo csv/csvLanches.csv para escrita
        int *idLanches = calloc(100, sizeof(int)), quantidadeArmazenado = 0, quantidadeArmazenadoAux = 0, jaTem; // Aloca memória para a variável idLanches e inicializa com 0
        if (lerQuantidadeLanches() == 0)                                                                         // Início do if
        {
            printf("Nao e possivel exportar um CSV dos lanches pois nenhum foi cadastrado ainda!\n"); // Imprime na tela a mensagem de lanche não cadastrado
            Limpar();                                                                                 // Limpa a tela
            return;                                                                                   // Retorna para o menu principal
        }                                                                                             // Fim do if
        else                                                                                          // Início do else
        {
            fprintf(csv, "ID Lanche, Nome do lanche, Descricao do lanche, Valor de custo, Valor do lanche, Calorias, Tipo lanche, Pertence as franquias\n"); // Escreve no arquivo csv/csvLanches.csv a primeira linha do arquivo
            for (size_t i = 0; i < lerQuantidadeLanches(); i++)                                                                                              // Início do for
            {
                if (Lanches[i].idLanche != 0) // Início do if
                {
                    jaTem = 0;                                        // Inicializa a variável jaTem com 0
                    for (size_t j = 0; j < quantidadeArmazenado; j++) // Início do for
                    {
                        if (Lanches[i].idLanche == idLanches[j]) // Início do if
                        {
                            jaTem = 1; // Inicializa a variável jaTem com 1
                        }              // Fim do if
                    }                  // Fim do for
                    if (!jaTem)        // Início do if
                    {
                        idLanches[quantidadeArmazenado] = Lanches[i].idLanche;                                                                                                                                                                             // Armazena o id do lanche
                        quantidadeArmazenado++;                                                                                                                                                                                                            // Incrementa a variável quantidadeArmazenado
                        quantidadeArmazenadoAux++;                                                                                                                                                                                                         // Incrementa a variável quantidadeArmazenadoAux
                        fprintf(csv, "%i, %s, %s, %.2f, %.2f, %i, %s, ", Lanches[i].idLanche, Lanches[i].nomeLanche, Lanches[i].descricaoDoLanche, Lanches[i].custoProducao, Lanches[i].valorLanche, Lanches[i].calorias, retornarTipoLanche(Lanches[i])); // Escreve no arquivo csv/csvLanches.csv os dados do lanche
                        for (size_t j = 0; j < lerQuantidadeLanches(); j++)                                                                                                                                                                                // Início do for
                        {
                            if (Lanches[j].idLanche == Lanches[i].idLanche) // Início do if
                            {
                                fprintf(csv, "%i ", Lanches[j].idFranquiaPertencente); // Escreve no arquivo csv/csvLanches.csv o id da franquia
                            }                                                          // Fim do if
                        }                                                              // Fim do for
                        fprintf(csv, "\n");                                            // Escreve no arquivo csv/csvLanches.csv uma nova linha
                    }                                                                  // Fim do if
                }                                                                      // Fim do if
            }                                                                          // Fim do for
            Limpar();                                                                  // Limpa a tela
            Verde(".CSV exportado com sucesso!\n");                                    // Imprime na tela a mensagem de exportação com sucesso
            fclose(csv);                                                               // Fecha o arquivo csv/csvLanches.csv
        }                                                                              // Fim do else
    }                                                                                  // Fim do else
} // Fim da função exportarCSV

void exibirMenuGeral(Franquia *Franquias, int *quantidadeFranquiasArquivo, Lanche *Lanches, int *quantidadeLanchesArquivo) // Função que exibe o menu geral
{
    char Entrada;                                                                                                 // Variável que armazena a entrada do usuário
    printf("----------- SISTEMA INTEGRADO DE GERENCIAMENTO DE FRANQUIAS -----------\n");                          // Imprime na tela o título do sistema
    printf("[1] - Gerenciar Franquias\n[2] - Gerenciar Lanches\n[3] - Exportar CSV\n[4] - Sair do programa\n\n"); // Imprime na tela o menu geral
    printf("Insira uma opcao: ");                                                                                 // Imprime na tela a mensagem de insira uma opção
    setbuf(stdin, NULL);
    Entrada = getchar(); // Armazena a entrada do usuário
    switch (Entrada)     // Início do switch
    {
    case '1':                                                                                          // Início do case 1
        Limpar();                                                                                      // Limpa a tela
        exibirMenuFranquias(Franquias, quantidadeFranquiasArquivo, Lanches, quantidadeLanchesArquivo); // Chama a função exibirMenuFranquias
        break;                                                                                         // Fim do case 1
    case '2':                                                                                          // Início do case 2
        Limpar();                                                                                      // Limpa a tela
        exibirMenuLanches(Franquias, quantidadeFranquiasArquivo, Lanches, quantidadeLanchesArquivo);   // Chama a função exibirMenuLanches
    case '3':                                                                                          // Início do case 3
        Limpar();                                                                                      // Limpa a tela
        exportarCSV(Franquias, Lanches);                                                               // Chama a função exportarCSV
        exibirMenuGeral(Franquias, quantidadeFranquiasArquivo, Lanches, quantidadeLanchesArquivo);     // Chama a função exibirMenuGeral
        break;                                                                                         // Fim do case 3
    case '4':                                                                                          // Início do case 4
        exit(1);                                                                                       // Sai do programa
        break;                                                                                         // Fim do case 4
    default:                                                                                           // Entra na fun�?o default
        Limpar();                                                                                      // Limpa a tela                                                             // Chama a função exportarCSV
        exibirMenuGeral(Franquias, quantidadeFranquiasArquivo, Lanches, quantidadeLanchesArquivo);     // Exibe menu geral
        break;                                                                                         // Break default
    }                                                                                                  // Fim do switch
} // Fim da função exibirMenuGeral

void exibirMenuFranquias(Franquia *Franquias, int *quantidadeFranquiasArquivo, Lanche *Lanches, int *quantidadeLanchesArquivo) // Função que exibe o menu de gerenciamento de franquias
{
    char Entrada;                                                                                                                                                                                                     // Variável que armazena a entrada do usuário
    printf("----------- SISTEMA INTEGRADO DE GERENCIAMENTO DE FRANQUIAS -----------\n");                                                                                                                              // Imprime na tela o título do sistema
    printf("[1] - Adicionar Franquia\n[2] - Editar Franquia\n[3] - Remover Franquia\n[4] - Exibir todas as Franquias\n[5] - Pesquisar uma franquia\n[6] - Voltar para o menu principal\n[7] - Sair do programa\n\n"); // Imprime na tela o menu de gerenciamento de franquias
    printf("Insira uma opcao: ");
    setbuf(stdin, NULL); // Imprime na tela a mensagem de insira uma opção
    Entrada = getchar(); // Armazena a entrada do usuário
    switch (Entrada)     // Início do switch
    {
    case '1':                                                                                          // Início do case 1
        Limpar();                                                                                      // Limpa a tela
        adicionarFranquia(Franquias, quantidadeFranquiasArquivo);                                      // Chama a função adicionarFranquia
        exibirMenuFranquias(Franquias, quantidadeFranquiasArquivo, Lanches, quantidadeLanchesArquivo); // Chama a função exibirMenuFranquias
        break;                                                                                         // Fim do case 1
    case '2':                                                                                          // Início do case 2
        Limpar();                                                                                      // Limpa a tela
        editarFranquia(Franquias, quantidadeFranquiasArquivo);                                         // Chama a função editarFranquia
        exibirMenuFranquias(Franquias, quantidadeFranquiasArquivo, Lanches, quantidadeLanchesArquivo); // Chama a função exibirMenuFranquias
        break;                                                                                         // Fim do case 2
    case '3':                                                                                          // Início do case 3
        Limpar();                                                                                      // Limpa a tela
        removerFranquia(Franquias, quantidadeFranquiasArquivo);                                        // Chama a função removerFranquia
        exibirMenuFranquias(Franquias, quantidadeFranquiasArquivo, Lanches, quantidadeLanchesArquivo); // Chama a função exibirMenuFranquias
        break;                                                                                         // Fim do case 3
    case '4':                                                                                          // Início do case 4
        Limpar();                                                                                      // Limpa a tela
        listarFranquias(Franquias);                                                                    // Chama a função listarFranquias
        exibirMenuFranquias(Franquias, quantidadeFranquiasArquivo, Lanches, quantidadeLanchesArquivo); // Chama a função exibirMenuFranquias
        break;                                                                                         // Fim do case 4
    case '5':                                                                                          // Início do case 5
        Limpar();                                                                                      // Limpa a tela
        pesquisarFranquia(Franquias, quantidadeFranquiasArquivo, Lanches);                             // Chama a função pesquisarFranquia
        exibirMenuFranquias(Franquias, quantidadeFranquiasArquivo, Lanches, quantidadeLanchesArquivo); // Chama a função exibirMenuFranquias
    case '6':                                                                                          // Início do case 6
        Limpar();                                                                                      // Limpa a tela
        exibirMenuGeral(Franquias, quantidadeFranquiasArquivo, Lanches, quantidadeLanchesArquivo);     // Chama a função exibirMenuGeral
    case '7':                                                                                          // Início do case 7
        exit(1);                                                                                       // Sai do programa
    default:                                                                                           // Início do default
        Limpar();                                                                                      // Limpa a tela
        Vermelho("Insira uma opcao de menu valida!\n");                                                // Imprime na tela a mensagem de opção de menu inválida
        exibirMenuFranquias(Franquias, quantidadeFranquiasArquivo, Lanches, quantidadeLanchesArquivo); // Chama a função exibirMenuFranquias
        break;                                                                                         // Fim do default
    }                                                                                                  // Fim do switch
} // Fim da função exibirMenuFranquias

void exibirMenuLanches(Franquia *Franquias, int *quantidadeFranquiasArquivo, Lanche *Lanches, int *quantidadeLanchesArquivo) // Função que exibe o menu de gerenciamento de lanches
{
    char Entrada;                                                                                                                                          // Variável que armazena a entrada do usuário
    printf("----------- SISTEMA INTEGRADO DE GERENCIAMENTO DE FRANQUIAS -----------\n");                                                                   // Imprime na tela o título do sistema
    printf("[1] - Adicionar Lanche\n[2] - Remover Lanche\n[3] - Exibir todos os Lanches\n[4] - Voltar para o menu principal\n[5] - Sair do programa\n\n"); // Imprime na tela o menu de gerenciamento de lanches
    printf("Insira uma opcao: ");                                                                                                                          // Imprime na tela a mensagem de insira uma opção
    setbuf(stdin, NULL);                                                                                                                                   // Limpa o buffer do teclado
    Entrada = getchar();                                                                                                                                   // Armazena a entrada do usuário
    switch (Entrada)                                                                                                                                       // Início do switch
    {
    case '1':                                                                                        // Início do case 1
        Limpar();                                                                                    // Limpa a tela
        adicionarLanche(Franquias, quantidadeFranquiasArquivo, Lanches, quantidadeLanchesArquivo);   // Chama a função adicionarLanche
        exibirMenuLanches(Franquias, quantidadeFranquiasArquivo, Lanches, quantidadeLanchesArquivo); // Chama a função exibirMenuLanches
        break;                                                                                       // Fim do case 1
    case '2':                                                                                        // Início do case 2
        Limpar();                                                                                    // Limpa a tela
        removerLanche(Lanches, quantidadeLanchesArquivo);                                            // Chama a função removerLanche
        exibirMenuLanches(Franquias, quantidadeFranquiasArquivo, Lanches, quantidadeLanchesArquivo); // Chama a função exibirMenuLanches
    case '3':                                                                                        // Início do case 3
        Limpar();                                                                                    // Limpa a tela
        listarLanches(Lanches);
        exibirMenuLanches(Franquias, quantidadeFranquiasArquivo, Lanches, quantidadeLanchesArquivo); // Chama a função exibirMenuLanches
        break;                                                                                       // Fim do case 3
    case '4':                                                                                        // Início do case 4
        Limpar();                                                                                    // Limpa a tela
        exibirMenuGeral(Franquias, quantidadeFranquiasArquivo, Lanches, quantidadeLanchesArquivo);   // Chama a função exibirMenuGeral
    case '5':                                                                                        // Início do case 5
        exit(1);                                                                                     // Sai do programa
        break;                                                                                       // Fim do case 5
    default:                                                                                         // Início do default
        Limpar();                                                                                    // Limpa a tela
        exibirMenuLanches(Franquias, quantidadeFranquiasArquivo, Lanches, quantidadeLanchesArquivo); // Chama a função exibirMenuLanches
        break;                                                                                       // Fim do default
    }                                                                                         // Fim do switch
} // Fim da função exibirMenuLanches