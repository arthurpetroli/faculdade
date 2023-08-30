package ex2;

public class Onibus {
	
	private Integer qtdePassageiros = 0;
	
	public Integer getQtdePassageiros() {
		return this.qtdePassageiros;
	}
	
	public void setQtdePassageiros(Integer qtdePassageiros) {
		this.qtdePassageiros = qtdePassageiros;
	}
	
	private String tipo = "";
	
	public String getTipo() {
		return this.tipo;
	}
	
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	
	public Onibus(Integer qtdePassageiros, String tipo) {
		this.qtdePassageiros = qtdePassageiros;
		this.tipo = tipo;
	}

	public Onibus() {
		
	}
}
