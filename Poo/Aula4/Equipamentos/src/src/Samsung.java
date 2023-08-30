package src;

public class Samsung extends Calculadora{
	
	public Samsung() {
		System.out.println(getNome());
		System.out.println(getCor());
		System.out.println(getTamanho());
		System.out.println(resultadoSoma);
		System.out.println(resultadoSub);
	}
	
	public static void main(String [] args) {
		new Samsung();
	}
}
