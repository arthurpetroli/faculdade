/**
 * 4) Excrever um programa C que cria uma árvore de 3 processos, onde o processo A faz um fork() criando um processo B, o processo B, por sua vez, faz um fork() criando um processo C. Cada processo deve exibir uma mensagem "Eu sou o processo XXX, filho de YYY", onde XXX e YYY são PIDs de processos. Utilizar wait() para garantir que o processo C imprima sua resposta antes do B, e que o processo B imprima sua resposta antes do A. Utilizar sleep() (man 3 sleep) para haver um intervalo de 1 segundo entre cada mensagem impressa.
*/

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

int main() {
    int pid = fork(); // For para o B
    if (pid == 0)
    {
        pid = fork(); // Fork para o C
        if (pid == 0) {
            pid = fork();
            if (pid == 0)
            {
                wait(NULL);
            sleep(1);
            printf("Processo D %d, filho de C %d\n", pid, getpid());
            } else {
                wait(NULL);
                sleep(1);
                printf("Processo C %d, filho de B %d\n", pid, getpid());
            }
        } else {
            wait(NULL);
            sleep(1);
            printf("Processo B %d, filho de A %d\n", pid, getpid());
        }
    } else {
        wait(NULL);
        sleep(1);
        printf("Processo A %d\n", pid);
    }
    return 0;
}