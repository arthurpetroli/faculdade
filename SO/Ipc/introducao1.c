/*Projete um programa de cópia de arquivos chamado FileCopy usando pipes comuns. Esse programa receberá dois parâmetros: o primeiro é o nome do arquivo a ser copiado e o segundo é o nome do arquivo que receberá a cópia. Em seguida, o programa criará um pipe comum e gravará nele todo conteúdo do arquivo de uma só vez.
 O processo filho lerá o conteúdo do pipe e o gravará no arquivo de destino. Por exemplo, se chamarmos o programa como descrito a seguir: 

$ FileCopy entrada.txt copia.txt

*/
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <fcntl.h>

int main(int argc, char *argv[])
{
    int fd[2];
    pid_t pid;
    char inbuf[100];
    char outbuf[100];
    char msg[100];
    int i;
    FILE *fp;
    pipe(fd);
    pid = fork();
    if (pid > 0)
    {
        fp = fopen(argv[1], "r");
        fread(inbuf, sizeof(char), 100, fp);
        write(fd[1], inbuf, strlen(inbuf) + 1);
        printf("Processo pai enviou mensagem: %s\n", inbuf);
    }
    else
    {
        read(fd[0], inbuf, 100);
        fp = fopen(argv[2], "w");
        fwrite(inbuf, sizeof(char), strlen(inbuf) + 1, fp);
        printf("Processo filho recebeu mensagem: %s\n", inbuf);
    }
    return 0;
}
