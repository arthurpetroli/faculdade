#include <unistd.h>
#include <stdlib.h>
#include <string.h>

char *msg;

void myprintf(int x, int y, char* msg){
 

    int size = strlen(msg);
    char msg2[11];
    strcpy(msg2,"\033[ B\033[ C");   
    
    
    msg2[2]= x + '0';
    msg2[6]= y + '0';

    write(1, msg2, strlen(msg2));
	    write(1, msg, strlen(msg2));
}

int strlen2(char *msg){
	int len = 0;
	while(msg[len] != '\0')
		len++;
	return len;
}


int main(){
	
	msg = (char *)malloc(50*sizeof(char));
	
	read(0, msg, strlen2(msg));
	
	myprintf(5, 6, "TomaNoCu");
	
	free(msg);
	
	return 0;
	
}
