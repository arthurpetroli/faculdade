//Construa um “pipeline”. Crie um programa que conecte 4 processos através de 3 pipes. Utilize fork() para criar vários processos. Mande uma mensagem do quarto processo e faça a mensagem viajar pelos pipes  até chegar no primeiro processo, e exiba a mensagem. Cada processo deve imprimir a mensagem que recebeu. 

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <fcntl.h>

int main(int argc, char *argv[])
{
    int fd1[2], fd2[2], fd3[2];
    pid_t pid;
    char inbuf[100];
    char outbuf[100];
    char msg[100];
    int i;
    char *msg1 = "mensagem 1";
    char *msg2 = "mensagem 2";
    char *msg3 = "mensagem 3";
    char *msg4 = "mensagem 4";
    pipe(fd1);
    pipe(fd2);
    pipe(fd3);

    pid = fork();
    if (pid > 0)
    {
        pid = fork();
        if (pid > 0)
        {
            pid = fork();
            if (pid > 0)
            {
                write(fd3[1], msg4, strlen(msg4));
                printf("Processo 4 enviou mensagem: %s\n", msg4);
            }
            else
            {
                read(fd3[0], inbuf, strlen(msg4));
                write(fd2[1], inbuf, strlen(inbuf));
                printf("Processo 3 recebeu mensagem: %s\n", inbuf);
            }
        }
        else
        {
            read(fd2[0], inbuf, strlen(msg4));
            write(fd1[1], inbuf, strlen(inbuf));
            printf("Processo 2 recebeu mensagem: %s\n", inbuf);
        }
    }
    else
    {
        read(fd1[0], inbuf, strlen(msg4));
        printf("Processo 1 recebeu mensagem: %s\n", inbuf);
    }

    return 0;
}

