package EX1;

import java.util.Scanner;

public class Principal {
	private int a, b;
	
	public void calcular() throws ArithmeticException{
		Scanner leitor = new Scanner(System.in);
		System.out.print("Valor 1: ");
		a = leitor.nextInt();
		
		System.out.print("Valor 2: ");
		b = leitor.nextInt();
		
		if(a == 10) 
			throw new ArithmeticException();
		
		System.out.println(a/b);
		
		int [] vetor = new int [10];
		int i=10;
		vetor[i]=123;
	}
	
	public Principal() {
		try {
			calcular();
		}catch(ArithmeticException e) {
			if(a == 10) 
				System.out.println("First Number 10");
			else
				System.out.println("Divisao por 0");
				System.out.println(e.getMessage());
			e.printStackTrace();
		}catch(ArrayIndexOutOfBoundsException e) {
			System.out.println("Posição Invalida");
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}finally {
			System.out.println("Pronto");
		}

	}
	public static void main(String[] args) {
		new Principal();
	}
}
