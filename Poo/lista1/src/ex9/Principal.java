package ex9;

public class Principal {
	public Principal() {	
		EmpresaViagem2 empresa = new EmpresaViagem2("Joao", "Cleber", "Jose", 360f, 15, 20, 50,"mercedes");
		System.out.println(empresa.toString());
	}
	public static void main(String [ ] args ){
        new Principal();
	}
}	