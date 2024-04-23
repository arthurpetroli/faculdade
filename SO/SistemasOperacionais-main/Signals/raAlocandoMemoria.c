#include <unistd.h> //biblioteca do write
#include <stdio.h>
#include <signal.h>
#include <stdlib.h>
#include <string.h>

int main() {
    char *name = (char*) calloc(20, sizeof(char));
    int long ra = 0;

    char *bufferName = (char*) malloc(64*sizeof(char));
    strcpy(bufferName, "Student name: ");
    char *bufferRa = (char*) malloc(64*sizeof(char));
    strcpy(bufferRa, "Student RA: ");

    write(1, bufferName, strlen(bufferName));
    read(0, name, 20);
    write(1, bufferRa, strlen(bufferRa));
    read(0, &ra, sizeof(long int));

    write(1, bufferName, strlen(bufferName));
    write(1, name, strlen(name));
    write(1, bufferRa, strlen(bufferRa));
    write(1, &ra, sizeof(long int));

    free(bufferName);
    free(bufferRa);
    free(name);
}