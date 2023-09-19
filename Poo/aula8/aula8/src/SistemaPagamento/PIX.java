package SistemaPagamento;

public class PIX {
	private String chavePIX;

	public String getChavePIX() {
		return chavePIX;
	}

	public void setChavePIX(String chavePIX) {
		this.chavePIX = chavePIX;
	}
	
	public float pagar(float valor){
		valor = (float)(valor + valor * 0.1);
		System.out.println(valor);
		return valor;
	}
}
