#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <signal.h>

#define MSG "\nRealmente deseja sair? [Y/n]: "
#define CTRLC "\nVocê apertou Ctl-C  "
#define EXIT "\nSaindo..."

int count = 0;

void handlerALARM() {
    write(1, EXIT, 11);
    exit(0);
}

void handlerZ(int signal) {
    int aux = count + '0';
    write(1, CTRLC, 22);
    write(1, &aux, sizeof(aux));
}

void handlerC(int signal) {
    count = count + 1;
    if (count % 3 == 0)
    {
        char *option = (char*) calloc(2, sizeof(char));
        write(1, MSG, 32);
        alarm(5);
        read(0, option, 1);
        if (strcmp(option, "Y") == 0)
        {
            exit(0);
        } else {
            alarm(0);
        }
    }
}

int main(int argc, char* argv[])
{
    signal(SIGINT, handlerC);
    signal(SIGTSTP, handlerZ);
    while (1)
    {
    }

    return 0;
}