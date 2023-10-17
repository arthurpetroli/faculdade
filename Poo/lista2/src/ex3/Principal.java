/*
Exercicio 3
Autor(es): Arthur Henrique de Oliveira Petroli
Data: 13-10-2023
*/

package ex3;

public class Principal {

    public static void main(String[] args) {
    	
    	Barco barco = new Barco("Barco1",2,4);
        Onibus onibus = new Onibus("Onibus1","Curto",4);
    

        System.out.println("Barco:");
        System.out.println(barco.limpa());
        System.out.println(barco.vidro());
        System.out.println(barco.ligar());
        System.out.println(barco.distancia());
        System.out.println(barco.manutencao());
 
        System.out.println("\nOnibus:");
        System.out.println(onibus.limpa());
        System.out.println(onibus.vidro());
        System.out.println(onibus.ligar());
        System.out.println(onibus.distancia());
        System.out.println(onibus.manutencao());
    }
}
