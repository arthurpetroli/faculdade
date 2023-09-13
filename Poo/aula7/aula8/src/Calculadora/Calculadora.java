package Calculadora;

public class Calculadora extends Equipamento{

	@Override
	
	public int somar(int a, int b) {
		return a+b;
	}

	@Override
	public int subtrair(int a, int b) {
		return a-b;
	}

}
