/*
Exercicio 6
Autor(es): Arthur Henrique de Oliveira Petroli
Data: 14-10-2023
*/

package ex6;

import java.util.ArrayList;
import java.util.List;

public class Principal {
    public static void main(String[] args) {
        List<Empregado> lista = new ArrayList<>();
        lista.add(new Bonificado("Arthur", "Petroli", 2700, 500, 300));
        lista.add(new Comissionado("Jorge","Silva", 2000, 230));
        lista.add(new Horista("Matheus", "Castro", 70, 210));
        
        for (Empregado ep : lista) {
           ep.imprimir();
           System.out.println("Ganhos: " + ep.ganhos() + "\n");
        }
        
        
    }
    
}