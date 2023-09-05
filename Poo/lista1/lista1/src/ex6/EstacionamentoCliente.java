/*
Exercicio 6
Autor(es): Arthur Henrique de Oliveira Petroli
Data: 30-08-2023
*/
package ex6;

public class EstacionamentoCliente {
	private String tipo;
	private String placa;
	private long horaEntrada;
	private long horaSaida;
	Float total;
	int valor;
	
	public EstacionamentoCliente(String tipo, String placa) {
		this.horaEntrada  = System.currentTimeMillis();
		this.tipo = tipo;
		this.placa = placa;
	}
	
	public int Calcular(){
		horaSaida = System.currentTimeMillis();
		total = (float)(horaSaida - horaEntrada);
		total = total/1000;
		total = total/60;
		if(total < 30) {
			this.valor = 0;
		}else if(total > 30 && total < 60) {
			this.valor = 10;
		}else {
			this.valor = 20;
		}
		return valor;
	}
	
	public EstacionamentoCliente() {
		
	}

	@Override
	public String toString() {
		return "EstacionamentoCliente [tipo=" + this.tipo + ", placa=" + this.placa + ", valor=" + this.valor + "]";
	}
	
}
