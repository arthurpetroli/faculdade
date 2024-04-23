#include <unistd.h>
#include <stdlib.h>
#include <signal.h>
#include <sys/wait.h>

int main(){
	int pid, status;
	
	pid = fork();
	
	if(pid == 0){
		printf("Eu sou o processo Filho, meu pid é %d\n",getpid());
		
		exit(10);
		
	}else if(pid > 0){
		printf("Eu sou o processo Pai, meu pid é %d\n",getpid());
		
		wait(&status);	
		
		if(WIFEXITED(status)){
			printf("O processo Filho executou normalmente\n");
			printf("O status é %d\n",status);
		}
		
		if(WIFSIGNALED(status)){
			printf("O processo Filho foi de arrasta\n");
		}
	}else
		printf("ERRO!!! na criacao do processo\n");
	return 0;
}
