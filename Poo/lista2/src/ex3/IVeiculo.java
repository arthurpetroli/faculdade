/*
Exercicio 3
Autor(es): Arthur Henrique de Oliveira Petroli
Data: 13-10-2023
*/

package ex3;

public interface IVeiculo {
	public abstract String emitirPassagem();
    public abstract String calcularPagamento(Integer dist);
    public abstract String calcularTempoViagem(Integer x1, Integer y1, Integer x2, Integer y2);
}
