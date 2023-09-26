package CalculadoraInterna;

public class Principal {
private int a;
private int b;
	public static class Calculadora {
		private int a;
	 private int b;
		public Calculadora() {
			
		}
		public Calculadora(int a, int b) {
			this.a = a;
			this.b = b;
		}
		public int sub() {
			return a-b;
		}
		public int somar(int a, int b) {
			return a+b;
		}		
	}	
	
	public Principal() {
		Calculadora samsung = new Calculadora();
		System.out.println(samsung.somar(1, 2));
		
		Calculadora hp = new Calculadora(1,2);
		System.out.println(hp.sub());
	}	
	
	public static void main(String [] args) {
		new Principal();
	}
	
	
}
