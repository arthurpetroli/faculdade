// Faça dois processos completamente diferentes (arquivos separados) compartilhar uma região de memória. Com o primeiro processo escreva no seguimento compartilhado para que o segundo processo consiga imprimi-lo. Elabore alguma maneira do primeiro processo destruir a memória compartilhada quando solicitado.

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <sys/stat.h>        /* For mode constants */
#include <sys/types.h>
#include <fcntl.h>           /* For O_* constants */
#include <errno.h>
#include <semaphore.h>

#define SHARED_MEM "/shared_mem"
 
int main(int argc, char *argv[])
{
    int fd;
    char *ptr;
    char *msg = "Mensagem compartilhada";
    fd = shm_open(SHARED_MEM, O_CREAT | O_RDWR, S_IRUSR | S_IWUSR);
    ftruncate(fd, strlen(msg));
    ptr = mmap(0, strlen(msg), PROT_READ | PROT_WRITE, MAP_SHARED, fd, 0);
    pid_t pid;

    pid = fork();
    if (pid > 0)
    {
       sprintf(ptr, "%s", msg);
       printf("Processo pai escreveu mensagem: %s\n", ptr);
    }
    else
    {
         sleep(1);
        printf("Processo filho recebeu mensagem: %s\n", ptr);
    }
    shm_unlink(SHARED_MEM);
    return 0;
}
