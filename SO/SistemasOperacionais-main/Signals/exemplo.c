#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

int main() {
    char buff[64];
    strcpy(buff, "Hello, World\n");
    char *message;
    message = (char*) malloc(64*sizeof(char));
    
    read(0, message, 20);
    write(1, buff, strlen(buff));

    free(message);
    return 0;
}