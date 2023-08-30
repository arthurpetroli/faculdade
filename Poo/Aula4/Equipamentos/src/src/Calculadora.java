package src;
//Calculadora eh Subclasse da
// Superclasse Equipamento
public class Calculadora extends Equipamento{

	protected Float resultadoSoma;
	protected Float resultadoSub;

	public Calculadora() {
	 /*	//chamada explicita ao construtor
		//da superclasse
		super("SAMSUNG","Vermelho",1.80f);
	 System.out.println(getNome());
	 System.out.println(getCor());
	 System.out.println(getTamanho());
	 */
		System.out.println(getNome());
		System.out.println(getCor());
		System.out.println(getTamanho());
	}
	public static void main(String [] args) {
		new Calculadora();
	}
	
	protected Float getresultadoSoma(){
		return 123.4f;
	}
	
	protected  Float getresultadoSub(){
		return 111.1f;
	}

	
}

