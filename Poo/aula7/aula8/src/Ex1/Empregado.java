package Ex1;

public class Empregado {
	private float salario;
	private Data dataNascimento;
	
	public Empregado(float salario) {
		this.salario = salario;
	}

	public Data getDataNascimento() {
		return dataNascimento;
	}

	public void setDataNascimento(Data dataNascimento) {
		this.dataNascimento = dataNascimento;
	}

	@Override
	public String toString() {
		return "Empregado [salario=" + salario + this.getClass() + "]";
	}
	
}
