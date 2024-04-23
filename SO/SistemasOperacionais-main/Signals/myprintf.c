#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <signal.h>

#define X "Digite valor de x: "
#define Y "Digite valor de y: "
#define MSG "Digite mensagem: "

void myprintf(int x, int y, char* msg){
    char *buffer = (char*) calloc(64, sizeof(char));
    strcpy(buffer,"\033[ B\033[ C");

    buffer[2]= x + '0';
    buffer[6]= y + '0';

    //strcat(buffer, msg);

    //TODO implementar os writes
    write(1, buffer, strlen(buffer)); // Usando sizeof(buffer) nao pega a mensagem
    write(1, msg, strlen(msg));
}

int main() {
    int x = 0;
    int y = 0;
    char *message = (char*) calloc(64, sizeof(char));

    write(1, X, sizeof(X));
    scanf("%d", &x);
    write(1, Y, sizeof(Y));
    scanf("%d", &y);
    write(1, MSG, sizeof(MSG));
    read(0, message, sizeof(message));

    myprintf(x, y, message);
    return 0;
}
