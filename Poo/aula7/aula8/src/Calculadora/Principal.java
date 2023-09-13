package Calculadora;

public class Principal {

		public Principal() {
			Calculadora samsung = new Calculadora();
			System.out.println("Soma(HP):"+samsung.somar(2,3));
			System.out.println("Subtrair(HP):"+samsung.subtrair(2,3));
			
			ICalculadora hp = new HP();
			System.out.println("Soma(HP):"+hp.somar(1,1));
			System.out.println("Subtrair(HP):"+hp.subtrair(1,1));
		}
		
		public static void main(String []args) {
			new Principal();
		}
}
