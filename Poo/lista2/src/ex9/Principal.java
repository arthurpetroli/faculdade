/*
Exercicio 9
Autor(es): Arthur Henrique de Oliveira Petroli
Data: 14-10-2023
*/

package ex9;

import java.io.IOException;

public class Principal { 
    public static void main(String[] args) {
        try {
            throw new ExceptionA("Excecao A");
        } catch (Exception e){
            System.out.println("Excecao " + e.getMessage());
        }
        try {
            throw new ExceptionB("Excecao B");
        } catch (Exception e){
            System.out.println("Excecao " + e.getMessage());
        }
        try {
            throw new NullPointerException("Null pointer");
        } catch (Exception e){
            System.out.println("Excecao " + e.getMessage());
        }
        try {
            throw new IOException("IO Exception");   
        } catch (Exception e){
            System.out.println("Excecao " + e.getMessage());
        }
    }
    
}
