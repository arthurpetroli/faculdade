public class Estudante {

/*
   TODO: Crie os metodos acessores e mutadores para
          cada uma das variaveis de instancia
*/

	//Variaveis de instancia
	private String nome;
	private String endereco;
	private String RA;
	private String sobrenome;
		
	public Estudante(String nome, String endereco, String RA, String sobrenome) { //<--parametro
		this.nome = nome;
		this.endereco = endereco;
		this.RA = RA;
		this.sobrenome = sobrenome;
	}	
	
	public String toString() {
		return "Nome: "+ nome +"\nendereco: "+ endereco + "\nRA: "+ RA + "\nsobrenome: " + sobrenome;
	}
	

}
