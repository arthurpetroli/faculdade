/*
Autor:  Sefora Davanso de Assis
RA: 2367777
*/
package letraG;

import java.util.Scanner;

public class Principal {

    public class ExcecaoVerificada extends Exception {

           public ExcecaoVerificada(String mensagem){
                    super(mensagem);
           }
           
           //sobrecarga
           public ExcecaoVerificada(){
           
           }
    } 

 

    public void leitura() throws ExcecaoVerificada {
        Scanner entrada = new Scanner(System.in);
                System.out.print("Digite 1 numero inteiro: ");
		int a1 = entrada.nextInt();
                System.out.print("Digite 1 numero inteiro: ");
		int a2 = entrada.nextInt();
                System.out.print("Digite 1 numero inteiro: ");
		int b1 = entrada.nextInt();
                System.out.print("Digite 1 numero inteiro: ");
		int b2 = entrada.nextInt();
                System.out.print("Digite 1 numero inteiro: ");
		int b3 = entrada.nextInt();
                
                ASubclasse auser = new ASubclasse(a1,a2,b1,b2,b3);
		System.out.println(auser);      

    }

   public void iniciar(){

          try {    //Obrigatorio usar try-catch
           leitura( );              
          } catch ( ExcecaoVerificada e ){ 
              System.out.println(e);
          }

    }


    public static void main( String [ ] args ){

         Principal principal = new Principal();
         principal.iniciar();
   }
}

