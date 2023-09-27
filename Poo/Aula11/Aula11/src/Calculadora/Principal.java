package Calculadora;

public class Principal {
	public abstract class Equipamento {
		public abstract int somar(int a, int b);
	}
	public class Samsung extends Equipamento {
		public int somar(int a, int b) {
	System.out.println(this.getClass().getSimpleName());
return a+b;
		}		
	}
	public class HP extends Equipamento {
		public int somar(int a, int b) {
	System.out.println(this.getClass().getSimpleName());
return a+b;
		}		
	}
	
	public Principal() {
		
		Equipamento calculadora = new Samsung();
		calculadora.somar(1, 2); //Samsung
		
		calculadora = new HP(); //HP
		System.out.println(calculadora.somar(1, 2));
		
		calculadora = new Samsung();
		System.out.println(calculadora.somar(1, 2));
		
		
		
		//Samsung samsung = new Samsung();
		//HP hp = new HP();
		//Calculadora calculadora = new Calculadora();
	}	
	
	public static void main(String [] args) {
		new Principal();
	}
	
}

