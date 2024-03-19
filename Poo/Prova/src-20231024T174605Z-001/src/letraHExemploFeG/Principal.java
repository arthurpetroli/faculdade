/*
Autor:  Sefora Davanso de Assis
RA: 2367777
*/
package letraHExemploFeG;


import java.util.Scanner;

public class Principal {

    public class MinhaExcecao extends ArithmeticException {

              public MinhaExcecao( String mensagem ){
                    super(mensagem);
              }
              
              public MinhaExcecao(  ){
              }
              
              public int corrigir(){
                     int a1 = 0;
   
                 return a1;
              }
              
                public int corrigir1(){
                 
                     int a2 = 0;
                
                 return a2;
              }
                  public int corrigir2(){
                   
                     int b1 = 0;

                 return b1;
              }
                    public int corrigir3(){
                    
                     int b2 = 0;
              
                 return b2;
              }
             public int corrigir4(){
                    
                     int b3 = 0;
                    return b3;
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
              e.corrigir();
              e.corrigir1();
              e.corrigir2();
              e.corrigir3();
              e.corrigir4();
              leitura();
          }

    }


    public static void main( String [ ] args ){

         Principal principal = new Principal();
         principal.iniciar();
   }
}

