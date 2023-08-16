package src;
public class calculadora {
	int campo1; //Atributos
	int campo2; //variaveis de instancia
	String marca;
	String cor;
	Float tamanho;
	int operacao;
	public int getCampo1() {
		return campo1;
	}
	public void setCampo1(int campo1) {
		this.campo1 = campo1;
	}
	public int getCampo2() {
		return campo2;
	}
	public void setCampo2(int campo2) {
		this.campo2 = campo2;
	}
	public String getMarca() {
		return marca;
	}
	public void setMarca(String marca) {
		this.marca = marca;
	}
	public String getCor() {
		return cor;
	}
	public void setCor(String cor) {
		this.cor = cor;
	}
	public Float getTamanho() {
		return tamanho;
	}
	public void setTamanho(Float tamanho) {
		this.tamanho = tamanho;
	}
	public int getOperacao() {
		return operacao;
	}
	public void setOperacao(int operacao) {
		this.operacao = operacao;
	}
	
	public int somar () {
		return this.campo1 + this.campo2;
	}
	@Override
	public String toString() {
		return marca + "\nCampo1:" + campo1 + " \nCampo2:" + campo2 + " \nMarca:" + marca + " \nCor:" + cor
				+ " \nTamanho:" + tamanho + " \nOperacao:" + operacao ;
	}
	
	
	
}	
