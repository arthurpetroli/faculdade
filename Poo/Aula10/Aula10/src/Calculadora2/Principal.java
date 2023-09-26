package Calculadora2;

public class Principal {
	//Classe interna anonima
		public abstract class Superclasse {
			public abstract int somar(int a, int b);
		}
		
		/*public class Calculadora extends Superclasse {
			public int somar(int a, int b) {
				return 0;
			}
		}*/
		
		public Principal() {
			//Classe interna anonima
		 Superclasse samsung = new Superclasse() {
		 	public int somar(int a, int b) {
		 		return a+b;
		 	}
		 };
		}	
		
		public static void main(String [] args) {
			new Principal();
		}
		
		
	}

