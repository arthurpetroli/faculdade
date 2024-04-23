/*
Excrever um programa C que cria uma árvore de 3 processos, onde o processo A faz um fork() criando um processo B, o processo B, por sua vez, faz um fork() criando um processo C. Cada processo deve exibir uma mensagem "Eu sou o processo XXX, filho de YYY", onde XXX e YYY são PIDs de processos. Utilizar wait() para garantir que o processo C imprima sua resposta antes do B, e que o processo B imprima sua resposta antes do A. Utilizar sleep() (man 3 sleep) para haver um intervalo de 1 segundo entre cada mensagem impressa.
*/

#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>

int main() {
    int pid = fork();
    if (pid < 0)
    {
        printf("Erro na criacao do processo\n");
    } else if (pid == 0) {
        sleep(1);
        printf("Eu sou o processo P2  %d, filho de P1\n", getpid());
        pid = fork();
        sleep(1);
        if (pid == 0)
        {
            printf("Eu sou o processo P3 %d, filho de P2\n", getpid());
        }
    } else {
        printf("Eu sou o processo pai P1 %d\n", getpid());
        wait(NULL);
    }    
    
    return 0;
}