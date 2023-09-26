package Calculadora3;

public class Principal {
	public interface ICalculadora {
		public abstract int somar(int a, int b);
	}
	
	public Principal() {
		//Classe interna anonima
	 ICalculadora samsung = new ICalculadora() {
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
