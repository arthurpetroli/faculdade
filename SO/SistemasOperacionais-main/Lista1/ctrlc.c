#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>
#include <sys/wait.h>
#include <string.h>

int count = 0;

void handlerCTRLC() {
    char input[1];
    count++;
    if (count == 3) {
        write(1, "Deseja sair ?\n", 15);
        alarm(3);
        read(0, input, 1);
        if (strcmp(input, "y") == 0)
        {
            exit(0);
        } else {
            count = 0;
            alarm(0);
        }
    }
}

void handlerALARM() {
    write(1, "Out of time\n", 13);
    exit(0);
}

void handlerCTRLZ() {
    int aux = count + '0';
    write(1, "Contador ", 9);
    write(1, &aux, 2);
}

int main() {
    signal(SIGALRM, handlerALARM);
    signal(SIGINT, handlerCTRLC);
    signal(SIGTSTP, handlerCTRLZ);

    while (1);

    return 0;
}

/*
    na main chamo signal para o alarm, ctrl c e ctrl z
    na ctrl c tenho uma var input e incremento o contador
    se contador for == 3 pergunto se quer sair, se reposta for y sai se nao reseta contador e o alarm
    antes do input eu chamo um alarm com o tempo de espera para o input
    na ctrl z eu faço casting de count e printo
*/
