package ex3;


public class Principal {
	public Principal() {
		EmpresaViagem empresa = new EmpresaViagem();
		System.out.println(empresa.getClass());
		EmpresaViagem empresa2 = new EmpresaViagem();
		System.out.println(empresa2.getClass());
	}
	public static void main(String [ ] args ){
        new Principal();
	}
}