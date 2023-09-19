package SistemaPagamento;

import java.util.Scanner;

public class Principal {
	public static void main(String[] args) {
        Principal p = new Principal();
    }
	
	public Principal(){
		String opcao="b";
		CaixaEletronico caixa = new CaixaEletronico();
		PIX pix = new PIX();

		while(opcao != "X") {
			System.out.println("1 - Digite P para acessar e pagar com PIX // 2 - Digite C para acessar e pagar com caixa // 3 - Digite X para sair");
			Scanner input = new Scanner(System.in);
			opcao = input.nextLine();
			switch(opcao){
			case "P":
				pix.pagar(30);
				break;
			case "C":
				caixa.pagar(30);
				break;
			case "X":
				System.out.println("Saindo....");
				return;
			}
		}
	}
}
