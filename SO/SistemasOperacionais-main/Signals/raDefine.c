#include <unistd.h> //biblioteca do write
#include <stdio.h>
#include <signal.h>
#include <stdlib.h>

#define MESSAGE "Student name: "
#define MESSAGE2 "Student RA: "

int main() {
    char *name = (char*) calloc(64, sizeof(char));
    int *ra = (int*) calloc(1, sizeof(int));

    write(1, MESSAGE, sizeof(MESSAGE));
    read(0, name, 64);
    write(1, MESSAGE2, sizeof(MESSAGE2));
    read(0, ra, sizeof(ra));

    write(1, MESSAGE, sizeof(MESSAGE));
    write(1, name, 64);
    write(1, MESSAGE2, sizeof(MESSAGE2));
    write(1, ra, sizeof(ra));

    free(name);
    free(ra);
}