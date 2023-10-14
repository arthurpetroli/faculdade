/*
Exercicio 1
Autor(es): Arthur Henrique de Oliveira Petroli
Data: 13-10-2023
*/

package ex1;

import java.util.ArrayList;
import java.util.List;

public class Principal {

    
    public static void main(String[] args) {
        
    Barco barco1 = new Barco("Barco1",2,4);
    Onibus onibus1 = new Onibus("Onibus1","Curto",4);
    Barco barco2 = new Barco("Barco2",4,6);
    Onibus onibus2 = new Onibus("Onibus2","Longo",6);
    
    List <Veiculo>lista = new ArrayList<>();
    lista.add(barco1);
    lista.add(onibus1);
    lista.add(barco2);
    lista.add(onibus2);
    
     for (Veiculo veiculo : lista) {
            System.out.println("Nome: " + veiculo.getNome());
            if (veiculo instanceof Barco) {
            	Barco b = (Barco) veiculo;
                System.out.println("Quantidade de cadeiras: " + b.getQtdeCadeiras());
                System.out.println("Quantidade de mesas: " + b.getQtdeMesas());
            } else if (veiculo instanceof Onibus) {
                Onibus o = (Onibus) veiculo;
                System.out.println("Quantidade de Passageiros: " + o.getQtdePassageiros());
                System.out.println("Tipo do onibus: " + o.getTipo());

            }
            System.out.println("---------------------------------");
        }
    }
}