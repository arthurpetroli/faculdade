#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>
#include <string.h>

#define MESSAGE "Digite mensagem: "
#define SECONDS "Digite segundos: "

int count = 0;

void handlerZ(int signal) {
    if (signal == SIGTSTP) {
        count = count + 1;
        if (count >= 3) {
            exit(0);
        }
    }
}

void printsinc(char *msg, int seconds) {
    signal(SIGTSTP, handlerZ);
    while (1) {
        write(1, msg, strlen(msg));
        sleep(seconds);
    }
}

int main() {
    int *seconds = (int*) calloc (1, sizeof(int));
    char *message = (char*) calloc(64, sizeof(char));

    write(1, MESSAGE, sizeof(MESSAGE));
    read(0, message, sizeof(message));
    write(1, SECONDS, sizeof(SECONDS));
    read(0, seconds, sizeof(int));
    printsinc(message, 2);

    return 0;
}