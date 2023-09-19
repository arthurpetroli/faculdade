package SistemaPagamento;

public class CaixaEletronico {
	private Integer numeroTerminal;

	public Integer getNumeroTerminal() {
		return numeroTerminal;
	}

	public void setNumeroTerminal(Integer numeroTerminal) {
		this.numeroTerminal = numeroTerminal;
	}
	
	public float pagar(float valor){
		valor = (float)(valor + valor * 0.02);
		System.out.println(valor);
		return valor;
	}
}
