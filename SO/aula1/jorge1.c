#include <unistd.h>
#include <stdlib.h>
#include <signal.h>
#include <stdbool.h>

char *msg;
int ctrlz = 0;

const void krl(int sig){
	ctrlz++;
	if(ctrlz == 3){
		write(1,"\nToma no seu cu\n",17);
		exit(0);
	}
}

void myprintf(char *msg, int second){

	alarm(second);
	pause();
	
}

int strlen2(char *msg){
	int len = 0;
	while(msg[len] != '\0')
		len++;
	return len;
}

const void handler(int signum){
	
	write(1, msg, strlen2(msg));
	
}



int main(){
	signal(SIGALRM, handler);
	
	signal(SIGTSTP, krl);
	
	msg = (char *)malloc(50*sizeof(char));
	
	read(0, msg, 14);
	
	while(true){
		myprintf(msg,1);
	}
	
	return 0;
	
}
