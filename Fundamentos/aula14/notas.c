#include <stdlib.h>
#include <stdio.h>

float notas(float nota1, float nota2, float nota3, char letra){

    if(letra == 'A'){
        return("%.2f\n",(nota1+nota2+nota3)/3);
    }
    else if(letra == 'P'){
        return("%.2f\n", (5*nota1+3*nota2+2*nota3)/10);
    }

    return 0;

}