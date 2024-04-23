/*Elabore um mini SHELL LINUX. Seu mini shell deverá contemplar as funcionalidades semelhantes aos seguintes  comandos:

ls: Lista todos os arquivos do diretório
ps: mostra uma série de informações sobre os processos
cd: Acessa uma determinada pasta (diretório)
mkdir: Cria um diretório
rm: Remove um arquivo/diretório
cat: mostra o conteúdo de um arquivo
Ifconfig: mostra informações do dispositivo de redes e ip
Porém o seu SHELL deverá conter comandos mais simples (de fácil entendimento para leigos) que os apresentados acima. Ficará a cargo de vocês discutir, planejar e elaborar estes comandos.

OBS: cada comando oferece uma série de possibilidades de argumentos e subfunções. Discuta com seu parceiro(a) as funcionalidades mais relevantes a ser implementadas por cada comando. A nota será atribuída a partir da comparação entre as duplas, ou seja, obterão  maior nota quem implementar mais funcionalidades para cada comando.

OBS2: Crie um comado chamado socorro para exibir todos os comandos implementados no seu shell.
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

void ls() {
    system("ls");
}

void ps() {
    system("ps");
}

void cd(char *directory) {
    chdir(directory);
}

void mkdir(char *directory) {
    char command[100];
    sprintf(command, "mkdir %s", directory);
    system(command);
}

void rm(char *file) {
    char command[100];
    sprintf(command, "rm -rf %s", file);
    system(command);
}

void cat(char *file) {
    char command[100];
    sprintf(command, "cat %s", file);
    system(command);
}

void ifconfig() {
    system("ifconfig");
}

void socorro() {
    printf("Comandos implementados:\n");
    printf("ls - Lista todos os arquivos do diretório\n");
    printf("ps - Mostra informações sobre os processos\n");
    printf("cd - Acessa uma determinada pasta (diretório)\n");
    printf("mkdir - Cria um diretório\n");
    printf("rm - Remove um arquivo/diretório\n");
    printf("cat - Mostra o conteúdo de um arquivo\n");
    printf("ifconfig - Mostra informações do dispositivo de rede e IP\n");
    printf("socorro - Exibe todos os comandos implementados no shell\n");
}

int main() {
    char command[100];

    while (1) {
        printf("Digite um comando: ");
        fgets(command, sizeof(command), stdin);
        command[strcspn(command, "\n")] = '\0';

        if (strcmp(command, "ls") == 0) {
            ls();
        } else if (strcmp(command, "ps") == 0) {
            ps();
        } else if (strncmp(command, "cd ", 3) == 0) {
            cd(command + 3);
        } else if (strncmp(command, "mkdir ", 6) == 0) {
            mkdir(command + 6);
        } else if (strncmp(command, "rm ", 3) == 0) {
            rm(command + 3);
        } else if (strncmp(command, "cat ", 4) == 0) {
            cat(command + 4);
        } else if (strcmp(command, "ifconfig") == 0) {
            ifconfig();
        } else if (strcmp(command, "socorro") == 0) {
            socorro();
        } else {
            printf("Comando inválido!\n");
        }
    }

    return 0;
}