package Calculadora;

public class Principal {
//Classe interna anonima
	public interface ICalculadora {
		public int somar(int a, int b);		
	}
	public class Calculadora implements ICalculadora {		
		public int somar(int a, int b) {			
			return 0;
		}		
	}			
	public Principal() {
		//Classe interna anonima
	 Calculadora samsung = new Calculadora() {
	 	public int somar(int a, int b) {
	 		return a+b;
	 	}
	 };
	 System.out.println(samsung.somar(1, 2));
	}	
	
	public static void main(String [] args) {
		new Principal();
	}
	
	
}

