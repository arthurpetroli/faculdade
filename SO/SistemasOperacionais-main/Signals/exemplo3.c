#include <stdio.h>
#include <unistd.h>
#include <signal.h>
#include <stdlib.h>

int count = 0;

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

int main() {

    while (1)
    {
        signal(SIGTSTP, handlerCTRLZ);
        alarm(5);
        pause();
    }
    return 0;
}