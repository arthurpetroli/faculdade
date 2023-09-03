/*
Exercicio 7
Autor(es): Arthur Henrique de Oliveira Petroli
Data: 30-08-2023
*/
package ex7;

import java.util.Random;

public class Descobrir {
	private int aleatorio=0;
	public int getAleatorio() {
		return aleatorio;
	}
	public void setAleatorio(int aleatorio) {
		this.aleatorio = aleatorio;
	}
	public Descobrir(int qtdeFuncionarios) {
		Random aleatorio = new Random();
		int valor = aleatorio.nextInt(qtdeFuncionarios) + 1;
		System.out.println("Número gerado: " + valor);
	}
}
