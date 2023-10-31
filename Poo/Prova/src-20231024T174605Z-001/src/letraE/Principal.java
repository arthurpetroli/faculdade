/*
Autor:  Sefora Davanso de Assis
RA: 2367777
*/
package letraE;

import java.util.ArrayList;

public class Principal {

    public Principal(){
       
       
    ArrayList <IC> lista = new ArrayList<>();
   
    IC tipo = new ASubclasse(1,2,3,4,5);
    lista.add(tipo);
    tipo = new  ASubclasseDobro(1,2,3,4,5);
    lista.add(tipo);
       
    for ( IC a : lista ){
        System.out.println(a.getClass());
    }
        
    }
     
    public static void main(String args[]) {
       new Principal();
    }
}
