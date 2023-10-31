package EX1;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Principal {
	int i=0;
	public class ExceptionDepartamento extends ArithmeticException{
	    public ExceptionDepartamento(String m){
	        super(m);
	    }
	}
	
	public class Funcionario extends Departamento{
		public String nome = "";

		public String getNome() {
			return nome;
		}

		public void setNome(String nome) {
			this.nome = nome;
		}
		
		public Funcionario(String nome){
			this.nome = nome;
		}

		@Override
		public String toString() {
			return "Funcionario [nome=" + nome + "]";
		}
		
		
		
	}
	
	public class Departamento extends DepartamentoDaEmpresa{
		
		public String nome = "";
		public Integer numero = 0;
		public ArrayList<Funcionario> funcionarios;
		public String getNome() {
			return nome;
		}
		public void setNome(String nome) {
			this.nome = nome;
		}
		public Integer getNumero() {
			return numero;
		}
		public void setNumero(Integer numero) {
			this.numero = numero;
		}
		public ArrayList<Funcionario> getFuncionarios() {
			return funcionarios;
		}
		public void setFuncionarios(ArrayList<Funcionario> funcionarios) {
			this.funcionarios = funcionarios;
		}
		Funcionario funcionario = new Funcionario(nome);
		public Departamento(String nome, Integer numero, Funcionario funcionarios) {
			this.nome = nome;
			this.numero = numero;
			this.funcionarios = new ArrayList<Funcionario>();
		}
	
	}
	
	public class DepartamentoDaEmpresa{
		public ArrayList<Departamento> departamentos;

		public ArrayList<Departamento> getDepartamentos() {
			return departamentos;
		}

		public void setDepartamentos(ArrayList<Departamento> departamentos) {
			this.departamentos = departamentos;
		}
		
		public Departamento consultar(Departamento numero) {
			return numero;
			
		}
		public DepartamentoDaEmpresa(Departamento departamentos) {
			this.departamentos = new ArrayList<Departamento>();
		}
		Departamento departamento = new Departamento("Cleber", 10, new Funcionario("Arthur"));
	  }
	{
	
		while (i==0) {
			int x=0;
			String nome1="";
			Scanner sc = new Scanner(System.in);
			System.out.println("Digite 1 para cadastar funcionario / Digite 2 para cadastrar departamento/ Digite 3 para listar funcionarios/ Digite 4 para sair");
			x = sc.nextInt();
			sc.nextLine();
			String nome="";
			switch(x){
				case 1:
					System.out.println("Digite o nome do funcionario:");
					nome1 = sc.nextLine();
					new Funcionario(nome1);
					break;
				case 2:
					System.out.println("Digite o nome do Departamento:");
					nome = sc.nextLine();
					System.out.println("Digite o numero do departamento:");
					int numero = sc.nextInt();
					new Departamento(nome,numero,new Funcionario(nome1));
					break;
				case 3:
					List<Funcionario> lista = new ArrayList<>();
					for (Funcionario ep : lista) {
				           System.out.println(ep.toString());
				        }
					break;
				case 4:
					i++;
					break;
			}
		}
	}
	public static void main(String[] args) {
		List<DepartamentoDaEmpresa> lista = new ArrayList<>();
        lista.add(new DepartamentoDaEmpresa(new Departamento("Cleber", 10, "Arthur")));
        try {
        	if(numero.Departamento < 0) {
        		throw new ExceptionDepartamento("Excecao Departamento");
        	}
        } catch (ArithmeticException e){
            System.out.println(e.getMessage());
        }
        
        
    }
}
