#include <stdio.h>
#include <unistd.h>
#include <signal.h>
#include <stdlib.h>

int count = 0;

void handlerINT(int signum) {
    write(1, "Signal canled\n", 15);
    alarm(0);
}

void handlerCTRLZ(int signum) {
    count = count + 1;

    write(1, "CTRL+Z\n", 8);
    int aux = count + '0';
    write(1, &aux, 1);
    write(1, "\n", 1);

    if (count == 3) {
        exit(0);
    }
}

void handlerALRM() {
    while (1)
    {
        alarm(3);
        pause();
    }
    
    write(1, "Alarm signal\n", 14);
}

int main() {

    signal(SIGALRM, handlerALRM);
    signal(SIGTSTP, handlerCTRLZ);
    signal(SIGINT, handlerINT);
    alarm(5);
    pause();

    return 0;
}