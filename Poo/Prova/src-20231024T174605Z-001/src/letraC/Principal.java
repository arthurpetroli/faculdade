/*
Autor:  Sefora Davanso de Assis
RA: 2367777
*/
package letraC;

import java.util.ArrayList;

public class Principal {

    public Principal(){
       
       
    ArrayList <A> lista = new ArrayList<>();
   
    A tipo = new ASubclasse(1,2,3,4,5);
    lista.add(tipo);
    tipo = new  ASubclasseDobro(1,2,3,4,5);
    lista.add(tipo);
       
    for ( A a : lista ){
        System.out.println(a.getClass());
        System.out.println(a.a1());
        System.out.println(a.a2());
        System.out.println(a.b1());
        System.out.println(a.b2());
        System.out.println(a.b3() + "\n");
    }
        
    }
     
    public static void main(String args[]) {
       new Principal();
    }
}
