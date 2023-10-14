/*
Exercicio 4
Autor(es): Arthur Henrique de Oliveira Petroli
Data: 13-10-2023
*/

package ex4;

import java.util.ArrayList;
import java.util.List;

public class Principal {
    public Principal(){
        
    	Barco barco1 = new Barco("Barco1",2,4);
        Onibus onibus1 = new Onibus("Onibus1","Curto",4);
        Barco barco2 = new Barco("Barco2",4,6);
        Onibus onibus2 = new Onibus("Onibus2","Longo",6);
        
        List <Veiculo>lista = new ArrayList<>();
        lista.add(barco1);
        lista.add(onibus1);
        lista.add(barco2);
        lista.add(onibus2);
        
        System.out.println("Passagem de Onibus");
        System.out.println(onibus1.emitirPassagem());
        System.out.println(onibus1.calcularPagamento(50));
        System.out.println(onibus1.calcularTempoViagem(4,2,6,3));
        
        System.out.println("\nPassagem de Barco");
        System.out.println(barco1.emitirPassagem());
        System.out.println(barco1.calcularPagamento(60));
        System.out.println(barco1.calcularTempoViagem(8,4,9,6));
        
        
        IMoeda[] formasDePagamento = new IMoeda[3];
        formasDePagamento[0] = new BitCoin();
        formasDePagamento[1] = new Euro();
        formasDePagamento[2] = new Real();

        for (IMoeda formaDePagamento : formasDePagamento) {
            formaDePagamento.formaPagamento();
        }
    }
    public static void main(String[] args) {
        new Principal();        
    }
}