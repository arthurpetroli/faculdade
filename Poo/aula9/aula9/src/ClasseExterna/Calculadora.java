package ClasseExterna;

public class Calculadora {
	float resultado;
	
	public void executar() {
		Operacao op = new Operacao();
		System.out.println(op.somar(1,2));
	}
	
	public class Operacao {
	 public float somar(float a, float b) {
		 return a+b;
	 }		
	}		
	public static void main(String [] args) {
		Calculadora samsung = new Calculadora();
		samsung.executar();
	}
	
}
