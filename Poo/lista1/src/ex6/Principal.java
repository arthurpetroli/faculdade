package ex6;

import java.util.Scanner;

import ex7.EmpresaViagem;
import ex7.Onibus;

public class Principal {
	public Principal() {
		int i=0;
		int x=0;
		String nome="";
		String proprietario="";
		String endereco="";
		Float vendas=0f;
		int qtdePassagem=0;
		int qtdeFuncionarios=0;
		int qtdePassageiros=0;
		String tipo="";
		String tipoCarro="";
		String placa="";
		
		EstacionamentoCliente calcular = new EstacionamentoCliente();
		EmpresaViagem empresa = new EmpresaViagem();
		
		Scanner sc = new Scanner(System.in);
		while (i==0) {
			System.out.println("Digite 1 para adicionar uma empressa / Digite 2 para adicionar veiculo / Digite 3 para sair:");
			x = sc.nextInt();
			sc.nextLine();
			switch(x){
				case 1:
					System.out.println("Digite o nome:");
					nome = sc.nextLine();
					System.out.println("Digite o proprietario:");
					proprietario = sc.nextLine();
					System.out.println("Digite o endereco:");
					endereco = sc.nextLine();
					System.out.println("Digite as vendas mensais:");
					vendas = sc.nextFloat();
					System.out.println("Digite a quantidade maxima de passagens:");
					qtdePassagem = sc.nextInt();
					System.out.println("Digite a quantidade de funcionarios:");
					qtdeFuncionarios = sc.nextInt();
					System.out.println("Digite a quantidade de passageiros do onibus:");
					qtdePassageiros = sc.nextInt();
					sc.nextLine();
					System.out.println("Digite o tipo do onibus:");
					tipo = sc.nextLine();
					empresa = new EmpresaViagem(nome,proprietario,endereco,vendas,qtdePassagem,qtdeFuncionarios,new Onibus(qtdePassageiros,tipo));
					System.out.println(empresa.toString());
					break;
				case 2:
					System.out.println("Digite o tipo do veiculo:");
					tipoCarro = sc.nextLine();
					System.out.println("Digite a placa:");
					placa = sc.nextLine();
					calcular = new EstacionamentoCliente(tipoCarro,placa);
					break;
				case 3:
					calcular.Calcular();
					System.out.println(calcular.toString());
					i++;
					break;
			}
		}

	}
	public static void main(String [ ] args ){
        new Principal();
	}
}