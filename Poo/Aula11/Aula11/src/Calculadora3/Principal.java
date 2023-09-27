package Calculadora3;

public class Principal {
	//Polimorfismo com interfaces
		public interface Equipamento {
			public abstract int somar(int a, int b);
		}
		
		public Principal() {
			
			Equipamento calculadora = new Equipamento() {
				public int somar(int a, int b) {
				 return a+b;	
				}			
			};
			calculadora.somar(1, 2); //Samsung
			
		
			
			
			
			//Samsung samsung = new Samsung();
			//HP hp = new HP();
			//Calculadora calculadora = new Calculadora();
		}	
		
		public static void main(String [] args) {
			new Principal();
		}
		
	}
