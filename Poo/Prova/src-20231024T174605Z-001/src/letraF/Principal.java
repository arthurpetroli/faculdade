/*
Autor:  Sefora Davanso de Assis
RA: 2367777
*/
package letraF;

import java.util.Scanner;

public class Principal {

    public class MinhaExcecao extends ArithmeticException {

              public MinhaExcecao( String mensagem ){
                    super(mensagem);
              }
              
              public MinhaExcecao(  ){
              }
    }
 

    public void leitura() {
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
          } catch ( MinhaExcecao e ){ 
              System.out.println(e);
          }

    }


    public static void main( String [ ] args ){

         Principal principal = new Principal();
         principal.iniciar();
   }
}

