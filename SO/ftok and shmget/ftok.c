#include <stdlib.h>
#include <sys/ipc.h>
#include <sys/types.h>
#include <sys/shm.h>
#include <stdio.h>
#include <string.h>

int main (int argc, char *argv[]){
    key_t key;
    int shmid;
    char *data;
    
    key = ftok("/sys", 'A');
    
    shmid = shmget(key, 1024, 0666|IPC_CREAT);
    
    data = (char *)shmat(shmid, (void *)0, 0);
    
    if(argc > 1 && !strcmp(argv[1], "apagar")){
        shmdt(data);
        shmctl(shmid, IPC_RMID, NULL);
        exit(0);
    }else if (argc > 1){
        strncpy(data, argv[1],1024);
    }else {
        printf("SHM: %s\n", data);
    }
    
    return 0;
    
}
