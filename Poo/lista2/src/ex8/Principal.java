/*
Exercicio 8
Autor(es): Arthur Henrique de Oliveira Petroli
Data: 14-10-2023
*/

package ex8;

public class Principal {

	 
    public static void main(String[] args) {
       try {
           throw new ExceptionC("ExcecaoC");
       } catch (ExceptionA e) {
           System.out.println("Excecao do tipo A: " + e.getMessage());
       }
   }
}
