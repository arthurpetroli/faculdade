package EX1;
import java.util.ArrayList;
import java.util.Scanner;

public class Principal {
	public class Funcionario {
		private String nome;
		private Departamento depto;
	public Funcionario(String nome, Departamento depto) {
		 this.nome = nome;
		 this.depto = depto;
	}
}
	
public class Departamento {
	private ArrayList<Funcionario> listaFuncionario = new ArrayList<>();
	private String nome;
	private int numero;
	public Departamento(String nome, int numero){
	this.nome = nome;
	this.numero = numero;
}
	
public void add( Funcionario funcionario ){
	listaFuncionario.add( funcionario );
	}
	public ArrayList<Funcionario> getLista(){
	return this.listaFuncionario;
	}
	public int getNumero() {
		 return this.numero;
	}
}

public class DepartamentosDaEmpresa {
	private ArrayList<Departamento> listaDepartamento = new ArrayList<>();
	public void add( Departamento depto ){
	this.listaDepartamento.add( depto );
	}
	public ArrayList<Departamento> getLista(){
	return this.listaDepartamento;
	}
}

public class MEV extends Exception {
	public MEV( String m ) {
	super( m );
	}
}
public Principal(){
	Scanner leitor = new Scanner( System.in );
	ArrayList<Funcionario> listaFuncionario = new ArrayList<>();
	DepartamentosDaEmpresa de = new DepartamentosDaEmpresa();
	int opcao;
	while( true ) {
		System.out.println("Opcao: ");
		opcao = leitor.nextInt();
		switch( opcao ){
		case 1: {
			Scanner leitor2 = new Scanner(System.in);
			String nome = leitor2.next();
			Scanner leitor3 = new Scanner(System.in);
			int numero = leitor3.nextInt();
			Departamento depto = null;
			boolean achou = false;
			for( Departamento d : de.getLista() )
			if ( d.getNumero() == numero ){
			depto = d;
			achou = true;
			}
			if ( ! achou )
			try {
			throw new MEV("MENSAGEM PERSONALIZADA");
			} catch( MEV mev ){
			}
			listaFuncionario.add( new Funcionario( nome, depto ) );
			break;
		}
		case 2 : {
			Scanner leitor3 = new Scanner(System.in);
			String nome = leitor3.next();
			Scanner leitor4 = new Scanner(System.in);
			int numero = leitor4.nextInt();
			Departamento depto = new Departamento( nome, numero );
			de.add( depto );
			break;
		}
		case 3: {
			Scanner leitor5 = new Scanner(System.in);
			int numero = leitor5.nextInt();
			for( Departamento depto : de.getLista() )
			if ( depto.getNumero() == numero )
			System.out.println( depto );
			break;
			}
			default :
			break;
		}//fim switch
	}//fim while
	}
	public static void main(String [ ] args ){
	new Principal();
	}
}
