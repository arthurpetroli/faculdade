#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <signal.h>
#include <stdbool.h>


char *msg;

void printsinc(char* msg, int segundos){
	alarm(segundos);
	pause();
}
 

int strlen2(char *msg){
	int len = 0;
	while(msg[len] != '\0')
		len++;
	return len;
}

void handler(int signum){
	
	write(1, msg, strlen2(msg));
	
}

int main(){
	signal(SIGALRM, handler);
	
	msg = (char *)malloc(50*sizeof(char));
	 
	read(0, msg, 11);
	
	while(true){
		printsinc(msg,1);
	}
	
	return 0;
	
}
