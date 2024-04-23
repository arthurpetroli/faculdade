#include <stdio.h>
#include <unistd.h>
#include <signal.h>
#include <stdlib.h>
#include <string.h>

void handlerAL() {
    char *message;
    message = (char*) malloc(64*sizeof(char));
    strcpy(message, "Signal received\n");
    

    write(1, message, strlen(message));
}

int main() {

    signal(SIGALRM, handlerAL);

    alarm(5);
    pause();

    return 0;
}