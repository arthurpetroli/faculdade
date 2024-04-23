#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <wait.h>
#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/shm.h>

#define SHM_SIZE 1024

int main(int argc, char *argv[])
{
      key_t key;
      int shmid;
      char *segmento;
      int modo,filho;
      /* Criar a chave: */
      key = ftok(".", 'x'); // cria key
      if (key == -1)
      {
           perror("ftok");
           exit(1);
       }
      /*Criar o segmento */
      shmid = shmget(key, SHM_SIZE, IPC_CREAT | 0666); // get shm
      if (shmid == -1) {
          perror("shmget");
          exit(1);
      }
      /*Vincula o segmento de memória á variável segmento*/
      segmento = shmat(shmid, (void *)0, 0);
      if (segmento == (char *)(-1)) {
         perror("shmat");
         exit(1);
      }
    int pid = fork();
    //Código do filho
    if (pid == 0)
    {
        printf("Filhin di papai\n");
        exit(1);
    } else {
        wait(NULL);
        printf("Papai di mamain\n");
    }

   //Código do pai
    /* Desvincular do segmento */
    if (shmdt(segmento) == -1) {
          perror("shmdt");
          exit(1);
    }
    return 0;


}