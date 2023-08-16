import java.util.Scanner;

public class Main {	

	public static void main(String[] args) {

		Scanner entrada = new Scanner(System.in);
		double angulo=0, radiano=0; //Angulo em graus		

		System.out.print("Angulo: ");
		angulo = entrada.nextDouble();	
		
		radiano = angulo* Math.PI/180; //Conversao do angulo em graus para radianos
				
		System.out.println("Cosseno de " + angulo + " eh: " + Math.round(Math.cos(radiano)));
		System.out.println("Seno de " + angulo + " eh: " + Math.round(Math.sin(radiano)));
		System.out.println("Tangente de " + angulo + " eh: " + Math.round(Math.tan(radiano)));
		
		System.out.println(Math.abs(-1.23));
		//

	}

}
