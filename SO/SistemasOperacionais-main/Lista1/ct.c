#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>
#include <signal.h>
#include <string.h>

int contador = 0;

int handlerC(int signum) {
    char input[2];
    contador++;
    if (contador == 3)
    {
        write(1, "Deseja sair\n", 13);
        alarm(3);
        read(0, input, 2);
        if (strcmp(input, "y") == 0) {
            exit(1);
        } else {
            alarm(0);
            contador = 0;
        }
    }

}

int handlerZ(int signum) {
    int aux = contador + '0';
    write(1, "Contador\n", 10);
    write(1, &aux, sizeof(int));
}

int handlerA(int signum) {
    write(1, "Saindo\n", 8);
    exit(1);
}

int main() {
    signal(SIGALRM, handlerA);
    signal(SIGINT, handlerC);
    signal(SIGTSTP, handlerZ);
    while (1);

    return 0;
}