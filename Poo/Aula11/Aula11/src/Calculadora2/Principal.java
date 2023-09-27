package Calculadora2;

public class Principal {
	//Polimorfismo com interfaces
		public interface Equipamento {
			public abstract int somar(int a, int b);
		}
		public class Samsung implements Equipamento {
			public int somar(int a, int b) {
		System.out.println(this.getClass().getSimpleName());
	return a+b;
			}		
		}
		public class HP implements Equipamento {
			public int somar(int a, int b) {
		System.out.println(this.getClass().getSimpleName());
	return a+b;
			}		
		}
		
		public Principal() {
			
			Equipamento calculadora = new Samsung();
			calculadora.somar(1, 2); //Samsung
			
			calculadora = new HP(); //HP
			calculadora.somar(1, 2);
			
			calculadora = new Samsung();
			calculadora.somar(1, 2);
			
			
			
			//Samsung samsung = new Samsung();
			//HP hp = new HP();
			//Calculadora calculadora = new Calculadora();
		}	
		
		public static void main(String [] args) {
			new Principal();
		}
		
	}

