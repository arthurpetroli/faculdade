/*
Autor:  Sefora Davanso de Assis
RA: 2367777
*/
package letraD;

public class Principal {

    public static void main(String [ ] args){
                     
        //Classe interna anonima: classe que eh subclasse da classe
        Principal.IC c = new Principal.IC(){
                            public abstract int b1();
                            public abstract int b2( );  
                            public abstract int b3();  
                        };
              }            

}
