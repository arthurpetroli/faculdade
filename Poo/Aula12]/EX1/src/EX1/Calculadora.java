package EX1;

import java.util.Scanner;

public class Calculadora {
	private int a, b;
	
	public void leitura() {
		Scanner leitor = new Scanner(System.in);
		System.out.print("Valor 1: ");
		a = leitor.nextInt();
			
		System.out.print("Valor 2: ");
		b = leitor.nextInt();
	}
		
	public void soma(float a, float b) throws ArithmeticException{
		System.out.println("Soma:" + (a+b));
	}
	
    public void subtracao(float a, float b) throws ArithmeticException{
    	System.out.println("Subtração:" + (a-b));
	}
    
    public void divisao(float a, float b) throws ArithmeticException{
    	System.out.println("Divisão:" + a/b);
	}

    public void multiplicacao(float a, float b) throws ArithmeticException{
    	System.out.println("Multiplicação:" + a*b);
	}
	
	public Calculadora() {
		try {
			leitura();
			if (a < 0 || b < 0) {
				throw new ArithmeticException("Dont do operation with negative number");
			}
			soma(a, b);
			subtracao(a, b);
			if (b == 0) {
				throw new ArithmeticException("Cant divided by 0 or multiplication by 0");
			}
			divisao(a, b);
			multiplicacao(a, b);
		}catch(ArithmeticException e) {
			System.out.println(e.getMessage());
		}finally {
			System.out.println("Pronto");
		}

	}
	public static void main(String[] args) {
		new Calculadora();
	}
}