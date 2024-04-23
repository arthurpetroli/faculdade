// Exercício 1: Faça um programa utilizando o posix do linux que faça dois processos filhos enviarem mensagem para um mesmo pai por meio de PIPES.

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main() {
    int pp[2], pp2[2];
    pipe(pp);
    pipe(pp2);
    char buffer[64];

    int pid = fork();
    if (pid == 0) {
        pid = fork();
        if (pid == 0)
        {
            write(pp[1], "Salve\n", 7);
        } else {
            write(pp2[1], "Salve 2\n", 7);
        }

    } else {
        read(pp[0], buffer, 64);
        printf("%s", buffer);
        read(pp2[0], buffer, 64);
        printf("%s\n", buffer);
    }
    return 0;
}