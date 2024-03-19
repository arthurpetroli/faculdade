#include <unistd.h>
#include <stdlib.h>
#include <signal.h>

char *msg;

void myprintf(char *msg, int second){

	alarm(second);
	pause();
	
}

void handler(int signum){
	
	write(1, msg, strlen2(msg));
	
}

int strlen2(char *msg){
	int len = 0;
	while(msg[len] != '\0')
		len++;
	return len;
}


int main(){
	signal(SIGALRM, handler);
	
	msg = (char *)malloc(50*sizeof(char));
	
	read(0, msg, 4);
	
	write(1, "Olá rassa\n\n", 11);
	
	myprintf(msg, 5);
	
	return 0;
	
}
