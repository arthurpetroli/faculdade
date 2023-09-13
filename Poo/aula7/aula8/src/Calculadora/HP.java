package Calculadora;

public class HP implements ICalculadora{

	@Override
	public int somar(int a, int b) {
		return a+b;
	}

	@Override
	public int subtrair(int a, int b) {
		return a-b;
	}

}
