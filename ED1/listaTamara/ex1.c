#include <stdio.h>
#include <stdlib.h>

int recursao(int x , int y) {
    if ( y == 0 ) {
        return 1;
    } else {
        return x * recursao(x , y-1);
    }
}

int main(){
    int x,y;

    printf("Digite o valor de x: ");
    scanf("%d",&x);

    printf("Digite por quanto quer que o numero seja elevado: ", y);
    scanf("%d", &y);

    recursao(x,y);
    
    printf("%d",recursao(x,y));

    return 0;
}