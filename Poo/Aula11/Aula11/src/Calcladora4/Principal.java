package Calcladora4;

import java.util.ArrayList;
import java.util.List;
public class Principal {
//Polimorfismo com interfaces
	public interface Equipamento {
		public abstract int somar(int a, int b);
		public abstract float preco();
	}
	
	public class Samsung implements Equipamento {		
		public int somar(int a, int b) {			
			return a+b;
		}		
		public float preco() {			
			return 1000;
		}		
	}
	public class Microondas implements Equipamento {
		public int somar(int a, int b) {			
			return a+b;
		}		
		public float preco() {			
			return 2000;
		}
	}
public class HP implements Equipamento {
	public int somar(int a, int b) {			
			return a+b;
		}		
		public float preco() {			
			return 3000;
		}
	}	
public class TV implements Equipamento {
	public int somar(int a, int b) {			
			return a+b;
		}		
		public float preco() {			
			return 2000;
		}
}
	
	public Principal() {
		
		List<Equipamento> lista = new ArrayList<>();
		
		Equipamento equipamento = new Samsung();
		lista.add(equipamento);
		
		equipamento = new Microondas();
		lista.add(equipamento);
		
		equipamento = new HP();
		lista.add(equipamento);
		
		equipamento = new TV();
		lista.add(equipamento);
		
		for( Equipamento i : lista) {
			System.out.println( i.preco() );
			System.out.println( i.somar(1, 2));
		}
	
		
		//Samsung samsung = new Samsung();
		//HP hp = new HP();
		//Calculadora calculadora = new Calculadora();
	}	
	
	public static void main(String [] args) {
		new Principal();
	}
	
}

