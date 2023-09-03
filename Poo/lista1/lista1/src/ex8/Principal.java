/*
Exercicio 8
Autor(es): Arthur Henrique de Oliveira Petroli
Data: 30-08-2023
*/
package ex8;

public class Principal {
	public Principal() {	
		Computador computador = new Computador();
		Data data = new Data();
		computador.setNome("comp1").setMarca("Intel").setData(1,1,2001);
		System.out.println(computador.toString());
	}
	public static void main(String [ ] args ){
        new Principal();
	}
}