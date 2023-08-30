package ex4;


public class Principal {
	public Principal() {
		EmpresaViagem empresa = new EmpresaViagem("Jorge","Boso","Apucarana",350f,1000,30,new Onibus(44,"Cleber"));
		System.out.println(empresa.toString());
		EmpresaViagem empresa2 = new EmpresaViagem("Umberto","Jose","Maringa",290f,900,20,new Onibus(38,"Joao"));
		System.out.println(empresa2.toString());
	}
	public static void main(String [ ] args ){
        new Principal();
	}
}